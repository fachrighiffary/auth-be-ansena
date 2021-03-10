const form = require("../helpers/form");
const authModel = require("../models/auth");

module.exports = {
  register: (req, res) => {
    const { body } = req;
    authModel
      .postNewUser(body)
      .then(() => {
        form.success(res, {
          msg: "Registrasi berhasil",
          userData: {
            username: body.username,
          },
        });
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
  login: (req, res) => {
    const { body } = req;
    authModel
      .postLogin(body)
      .then((data) => {
        form.success(res, data);
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
  getAlluser: (req, res) => {
    authModel
      .getAlluser()
      .then((data) => {
        if (data.length) {
          res.json({
            data,
          });
        } else {
          res.status(400).json({
            msg: "Data Not Found",
          });
        }
      })
      .catch((err) => {
        form.error(res.err);
      });
  },
  getUserById: (req, res) => {
    const { id } = req.params;
    authModel.getUserById(id).then((data) => {
      if (data.length) {
        res.json({
          data,
        });
      } else {
        res.status(400).json({
          msg: "Data Not Found",
        });
      }
    });
  },
  updateUser: (req, res) => {
    const { id } = req.params;
    const { body } = req;

    const updateBody = {
      ...body,
    };

    authModel
      .updateUserAnsena(updateBody, id)
      .then((data) => {
        const resObject = {
          msg: "Update SuccessFully",
          data: { id: data.updateId, updateBody },
        };
        res.json(resObject);
      })
      .catch((err) => {
        const error = {
          msg: "Update Failed",
          err,
        };
        res.json(error);
      });
  },
  rubahPassword: (req, res) => {
    const { body } = req;
    authModel
      .userChangePassword(body)
      .then((result) => {
        res.status(result.status).json(result);
      })
      .catch((error) => {
        res.status(error.status).json(error);
      });
  },
};
