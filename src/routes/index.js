const express = require("express");
const mainRouter = express.Router();

const welcomeRouter = require("./welcome");
const AuthRouter = require("./auth");
const AssignmentRouter = require("./assignment");

mainRouter.use("/", welcomeRouter);
mainRouter.use("/auth", AuthRouter);
mainRouter.use("/assignment", AssignmentRouter);

module.exports = mainRouter;
