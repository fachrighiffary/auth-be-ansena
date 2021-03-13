const assignmentRouter = require("express").Router();
const assignmentController = require("../controllers/assignment");

const checkToken = require("../helpers/middleware/checkToken");

assignmentRouter.post("/", assignmentController.postAssignment);
assignmentRouter.get("/", checkToken.login, assignmentController.getAllAssignment);

module.exports = assignmentRouter;
