module.exports=(app)=>{
    let PromotionController=require('../controllers/promotion.controller')

    app.get("/promotion",PromotionController.PromotionController)
    app.post("/insertPromotion",PromotionController.InsertPromotionController)
    app.put("/editPromotion",PromotionController.EditPromotionController)
    app.delete("/deletePromotion",PromotionController.DeletePromotionController)
    // app.post("/Product",ProductController.)
}