require("dotenv").config();
const express = require("express");
const logger = require("morgan");
const mainRouter = require("./src/routes/index");
const app = express();
const port = 8001;
const server = require("http").createServer(app);

app.use(express.static("public"));
server.listen(port, () => {
  console.log(`server is running port ${port}`);
});
app.use(logger("dev"));
app.use(express.urlencoded({ extended: false }));

app.use(express.json());
app.use("/", mainRouter);

module.exports = app;
