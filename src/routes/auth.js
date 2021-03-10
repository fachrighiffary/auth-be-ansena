const authRouter = require("express").Router();
const authController = require("../controllers/auth");
const checkToken = require("../helpers/middleware/checkToken");

authRouter.post("/register", checkToken.isRegistered, authController.register);
authRouter.post("/login", authController.login);
authRouter.get("/", authController.getAlluser);
authRouter.get("/:id", authController.getUserById);
authRouter.patch("/change-password", authController.rubahPassword);
authRouter.patch("/:id", authController.updateUser);

module.exports = authRouter;
