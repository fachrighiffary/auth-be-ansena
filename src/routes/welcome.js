const express = require("express");

const welcomeRouter = express.Router();

welcomeRouter.get("/", (req, res) => {
  res.send("Server Auth");
});

//export handler endpoint
module.exports = welcomeRouter;
