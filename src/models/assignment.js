const db = require("../configs/mySQL");

module.exports = {
  getAllAssignment: (id, flow) => {
    let user = "";
    let JoinTable = "";
    if (flow == "out") {
      user = "j.sender";
      JoinTable = `JOIN users as u ON u.id  = j.reciever_id`;
    } else {
      user = "j.reciever_id";
      JoinTable = `JOIN users as u ON u.id  = j.sender`;
    }
    return new Promise((resolve, reject) => {
      const qs = `SELECT j.id, j.sender, j.reciever_id, u.fullname, j.detail_job,j.type ,j.input_date FROM job as j ${JoinTable} where ${user} = ? AND j.type = '${flow}' ORDER BY j.input_date`;
      db.query(qs, id, (err, data) => {
        if (!err) {
          if (data.length > 0) {
            resolve({
              status: 200,
              message: `Daftar Assignment ditemukan`,
              data: data,
            });
          } else {
            resolve({
              status: 200,
              message: `Daftar Assignment tidak ditemukan`,
              data: [],
            });
          }
        } else {
          reject({
            status: 500,
            message: "internal server error",
            details: err,
          });
        }
      });
    });
  },
  postNewAssignment: (sender, reciever_id, detail_job) => {
    return new Promise((resolve, reject) => {
      let dataAssignment = {
        sender: sender,
        reciever_id: reciever_id,
        detail_job: detail_job,
        type: "in",
        input_date: new Date(Date.now()),
      };
      const qs = `INSERT INTO job SET ? `;
      db.query(qs, dataAssignment, (err, data) => {
        if (!err) {
          dataAssignment = {
            ...dataAssignment,
            type: "out",
          };
          const qs = `INSERT INTO job SET ? `;
          db.query(qs, dataAssignment, (err, data) => {
            if (!err) {
              resolve({
                status: 200,
                message: "Assignment sukses",
                details: dataAssignment,
              });
            } else {
              reject({
                status: 500,
                message: `Internal server error`,
                details: err,
              });
            }
          });
        } else {
          reject({
            status: 500,
            message: `Internal Server Error`,
            deails: err,
          });
        }
      });
    });
  },
};
