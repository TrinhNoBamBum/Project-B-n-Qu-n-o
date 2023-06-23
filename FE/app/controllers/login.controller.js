const { pool, mssql } = require('../../connect')
let Login = require('../models/login.model')

const jwt = require("jsonwebtoken");


let model = new Login();
exports.getUC = (req, res) => {
    model.getUser((err, data) => {
        res.send(data)
    })
}
exports.Post = (req, res) => {
    model.register(req.body, (err, data) => {
        res.send(data)

    })
}

exports.Delete = (req, res) => {
    model.DeleteInfoUser(req.query.Id, (err, data) => {
        res.send(data)
    })
}

exports.EditUserController=(req,res)=>{
  model.EditUserModle(req.body,(err,data)=>{
      res.send(data)
  })
}
exports.FindUserController=(req, res)=>{
  model.FindUserModel(req.query.Id,(err,data)=>{
    res.send(data)
  })
}

//Xử lý tonken\
//tạo mới access token
const refreshTokens = []
const generateAccessToken = (user) => {
    return jwt.sign(
        {
            id: user,
            //payload
        },
        '12345',  //key
        { expiresIn: "356d" }
    );
}
//tao refesh token 
const generateRefreshToken = (user) => {
    return jwt.sign(
        {
            id: user,
           
        },
        '456',
        { expiresIn: "365d" }
    );
}

//action Refresh Token
const requestRefreshToken=async (req, res) => {
    //Take refresh token from user
    const refreshToken = req.cookies.refreshToken;
    //Send error if token is not valid
    if (!refreshToken) return res.status(401).json("You're not authenticated");
    if (!refreshTokens.includes(refreshToken)) {
      return res.status(403).json("Refresh token is not valid");
    }
    jwt.verify(refreshToken, '12345', (err, user) => {
      if (err) {
        console.log(err);
      }
      refreshTokens = refreshTokens.filter((token) => token !== refreshToken);
      //create new access token, refresh token and send to user
      const newAccessToken = generateAccessToken(user);
      const newRefreshToken = generateRefreshToken(user);
      refreshTokens.push(newRefreshToken);
      res.cookie("refreshToken", refreshToken, {
        httpOnly: true,
        secure:false,
        path: "/",
        sameSite: "strict",
      });
      res.json({
        accessToken: newAccessToken,
        refreshToken: newRefreshToken,
      });
    });
  }


exports.LoginDemoController = (req, res) => {
    model.logginModelDemo(req.body, (err, data) => {
        if (err == null) {
            if (data.recordset.length >= 1) {
             
                const accessToken = generateAccessToken(data.recordset[0]);
                //Generate refresh token
                const refreshToken = generateRefreshToken(data.recordset[0]);
                refreshTokens.push(refreshToken);
                res.cookie("refreshToken", refreshToken, {
                    httpOnly: true,
                    secure: false,
                    path: "/",
                    sameSite: "strict",
                })
                res.json({ ...data.recordset[0], accessToken, refreshToken });
                //console.log({ ...data.recordset[0], accessToken, refreshToken })

            }
            else {
                res.json("Thông tin đăng nhập không chính xác")
            }

        }
        else {
            res.send({ err: "Lỗi mất rồi anh em oi" })


        }
    })
}
exports.verifyToken = (req, res, next) => {
    //ACCESS TOKEN FROM HEADER, REFRESH TOKEN FROM COOKIE
    const token = req.headers.token;
    //const refreshToken = req.cookies.refreshToken;
    if (token) {
      const accessToken = token.split(" ")[1];
      jwt.verify(accessToken, '12345', (err, user) => {
        if (err) {
          res.json("Token is not valid!");
          console.log(err,token)
        }
        req.user = user;
        console.log({user})
        next();
      });
    } else {
      res.json("You're not authenticated");
    }
  }


