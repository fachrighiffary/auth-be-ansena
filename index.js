require("dotenv").config();
const express = require("express");
const logger = require("morgan");
const mainRouter = require("./src/routes/index");
const app = express();
const port = 8001;
const http = require("http");
const server = http.createServer(app);
const socketio = require("socket.io");
const { basename } = require("path");
const io = socketio(server).sockets;

global.io = io;
io.on("connection", (socket) => {
  console.log(socket.id);
  const id = socket.handshake.query.user_id;
  console.log("a user connected ...", id, socket.id);
  io.socketsJoin(id);
  socket.on("assignment", (detail_job, sender_name, recipient) => {
    console.log("sender_name = " + sender_name);
    console.log("recipient = " + recipient);
    console.log("detail job = " + detail_job);
    // io.to(`${sender}`).emit("AssignmentOut", `Assignment berhasil,  ${detail_job}`);
    io.to(`${recipient}`).emit("AssignmentIn", `${sender_name} Memberi anda tugas ${detail_job}`, detail_job);
  });
});

app.use(express.static("public"));
server.listen(port, () => {
  console.log(`server is running port ${port}`);
});
app.use(logger("dev"));
app.use(express.urlencoded({ extended: false }));

app.use(express.json());
app.use("/", mainRouter);

module.exports = app;
