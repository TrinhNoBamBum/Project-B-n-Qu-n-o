
const multer = require('multer');
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'C:/Users/t490/OneDrive/Desktop/webShopThoiTrang/WebShopFashion/public/assets/img/product/')
    },
    filename: function (req, file, cb) {
      cb(null, file.originalname )
    }
  });
  const upload = multer({ storage: storage });
//   app.post('/upload', upload.single('image'), function(req, res) {
//     res.send('File uploaded!');
//   });
module.exports=(app)=>{
    let OrderController=require('../controllers/order.controller')
    app.get("/getOrder",OrderController.getlist)
    app.get("/getOrderById",OrderController.getOrderControllerById)
    app.post("/postOrder",OrderController.Post)
    app.post("/postDetailOrder",OrderController.DetailOrder)
    app.get("/GetDetailOrder",OrderController.AdminDetailOrder)
    app.put("/updateStt",OrderController.PutAcceptOrder)
    app.get("/thongke",OrderController.AdminTotalOrder)
    app.get("/totalMoney",OrderController.AdminTotalMoney)
    app.delete("/deleteOrderDetail", OrderController.DeleteOrderDetailController)
    app.delete("/deleteOrder", OrderController.DeleteOrderController)


    //Thừa
    

    // app.post("/Product",ProductController.)
}