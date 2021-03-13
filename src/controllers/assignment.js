const form = require("../helpers/form");
const assignmentModel = require("../models/assignment");

module.exports = {
  getAllAssignment: (req, res) => {
    const { user_id } = req.decodedToken;
    Promise.all([assignmentModel.getAllAssignment(user_id, "in"), assignmentModel.getAllAssignment(user_id, "out")])
      .then((result) => {
        let newAssignment = result[0].data.concat(result[1].data);
        newAssignment = newAssignment.sort((a, b) => {
          return b.input_date - a.input_date;
        });
        newAssignment = newAssignment.filter((value, index) => {
          return index < 7;
        });
        res.status(200).json({
          status: 200,
          message: `Berhasil menampilkan Data`,
          data: newAssignment,
        });
      })
      .catch((error) => {
        res.status(error.status).json(error);
      });
  },
  postAssignment: (req, res) => {
    const { sender, reciever_id, detail_job } = req.body;
    // console.log(req.body);
    assignmentModel
      .postNewAssignment(sender, reciever_id, detail_job)
      .then((result) => {
        res.status(200).json(result);
      })
      .catch((error) => {
        res.status(error.status).json(error);
      });
  },
};
