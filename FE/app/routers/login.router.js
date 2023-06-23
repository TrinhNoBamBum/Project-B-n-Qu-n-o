const jwt = require("jsonwebtoken");

module.exports=(app)=>{
    let LoginController=require('../controllers/login.controller')
    const {verifyToken} =require('../controllers/login.controller')
   
    // app.get("/login",verifyToken,LoginController.getUC)
    app.post("/register",LoginController.Post)
    app.delete("/deleteUser", LoginController.Delete)
    app.post("/loginToken",LoginController.LoginDemoController)
    app.get("/login",LoginController.getUC)
    app.put("/editUser",LoginController.EditUserController)
    app.get("/findRole",LoginController.FindUserController)
    // app.post("/Product",ProductController.)
}