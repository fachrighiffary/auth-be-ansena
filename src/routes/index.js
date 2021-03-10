const express = require("express");
const mainRouter = express.Router();

const welcomeRouter = require("./welcome");
const AuthRouter = require("./auth");

mainRouter.use("/", welcomeRouter);
mainRouter.use("/auth", AuthRouter);

module.exports = mainRouter;
