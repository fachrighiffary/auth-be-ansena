const db = require("../configs/mySQL");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

module.exports = {
  postNewUser: (body) => {
    return new Promise((resolve, reject) => {
      const saltRounds = Math.floor(Math.random() * 10) + 1;
      bcrypt.hash(body.password, saltRounds, (err, hashedPassword) => {
        const newUser = { ...body, password: hashedPassword };
        const qs = `INSERT INTO users SET ? `;
        db.query(qs, newUser, (err, data) => {
          if (!err) {
            resolve({
              status: 200,
              message: `Registrasi Berahasil`,
              data,
            });
          } else {
            reject({
              status: 500,
              message: `Internal server Error`,
              details: err,
            });
          }
        });
      });
    });
  },
  postLogin: (body) => {
    return new Promise((resolve, reject) => {
      const { email, password } = body;
      const qs = "SELECT password, id, email ,fullname FROM users WHERE email=? ";

      db.query(qs, [email], (err, data) => {
        if (err) {
          reject({
            msg: "Error SQL",
            status: 500,
            err,
          });
        }
        if (!data[0]) {
          reject({
            msg: "User Not Found",
            status: 404,
          });
        } else {
          bcrypt.compare(password, data[0].password, (err, result) => {
            if (err) {
              reject({
                msg: "Hash error",
                status: 500,
                err,
              });
            }
            //result => antara true : false
            if (!result) {
              reject({
                msg: "Wrong password",
                status: 401,
              });
            } else {
              const payload = {
                user_id: data[0].id,
                email,
              };
              const secret = process.env.SECRET_KEY;
              const token = jwt.sign(payload, secret);
              resolve({
                id: data[0].id,
                email: data[0].email,
                fullname: data[0].username,
                token,
              });
            }
          });
        }
      });
    });
  },
  getAlluser: () => {
    return new Promise((resolve, reject) => {
      const qs = `SELECT * FROM users`;
      db.query(qs, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  getUserById: (id) => {
    return new Promise((resolve, reject) => {
      const qs = "SELECT * FROM users WHERE id = ? ";
      db.query(qs, id, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  updateUserAnsena: (updateBody, id) => {
    return new Promise((resolve, reject) => {
      const qs = "UPDATE users SET ? Where id = ?";
      db.query(qs, [updateBody, id], (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
  userChangePassword: (body) => {
    return new Promise((resolve, reject) => {
      const { email, old_password, new_password } = body;
      const queryStr = `SELECT password FROM users WHERE email = ?`;
      db.query(queryStr, email, (err, data) => {
        if (!err) {
          if (data.length > 0) {
            bcrypt.compare(old_password, data[0].password, (error, result) => {
              if (error) {
                reject({
                  status: 500,
                  message: error,
                });
              }
              if (!result) {
                reject({
                  status: 401,
                  message: "Password salah",
                });
              } else {
                const saltRounds = Math.floor(Math.random() * 10) + 1;
                bcrypt.hash(new_password, saltRounds, (errorHash, hashedPassword) => {
                  if (errorHash) {
                    reject({
                      statu: 500,
                      message: errorHash,
                    });
                  } else {
                    const updatePassword = `UPDATE users SET password = ? WHERE email = ?`;
                    db.query(updatePassword, [hashedPassword, email], (errorUpdate, dataUpdate) => {
                      if (!errorUpdate) {
                        resolve({
                          status: 200,
                          message: `Change Password , berhasil`,
                        });
                      } else {
                        reject({
                          status: 500,
                          message: errorUpdate,
                        });
                      }
                    });
                  }
                });
              }
            });
          } else {
            reject({
              status: 404,
              message: `data tidak ditemukan`,
            });
          }
        } else {
          reject({
            status: 500,
            message: err,
          });
        }
      });
    });
  },
};
