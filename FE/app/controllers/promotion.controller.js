let Promotion = require('../models/promotion.model')
let model = new Promotion();
exports.PromotionController=(req,res)=>{
    model.PromotionModel((err,data)=>{
        res.send(data)
    })

}
exports.InsertPromotionController=(req,res)=>{
    model.InsertPromotionModel(req.body,(err,data)=>{
        res.send(data)
    })
}

exports.EditPromotionController=(req,res)=>{
    model.EditPromotionModel(req.body,(err,data)=>{
        res.send(data)
    })
}

exports.DeletePromotionController=(req,res)=>{
    model.DeletePromotionModel(req.body,(err,data)=>{
        res.send(data)
    })
}

