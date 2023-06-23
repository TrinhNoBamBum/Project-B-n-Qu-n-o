const { pool, mssql } = require('../../connect')
module.exports= function (){
    this.PromotionModel= async (end)=>{
        var sql="Select * from programPromotion "
        try {
            await pool.connect()
            return await pool.request()
            .query(sql, (err, data)=>{
                if (data.recordset.length > 0) {
                    end(null, data.recordset)
                }
                else {
                    end(true, null)
                   
                }
            })
        }
        catch(err) {
            console.log(err)

        }
    }

    this.InsertPromotionModel=async(newdata, end)=>{
        var sql="INSERT INTO programPromotion(TenCTKM,rate,Due) VALUES(@name,@rate,@due)"
        await pool.connect()
        return await pool.request()
            .input('name', mssql.NVarChar, newdata.TenCTKM)
            .input('rate', mssql.Int, newdata.rate)
            .input('due', mssql.NVarChar, newdata.Due)
            .query(sql, (err, data) => {
                if (err) {
                    end(true, null)
           
                }
                else {
                    end(null, newdata)
               
                    
                }
            })
    }

    this.EditPromotionModel=async (newdata, end) => {
        var sql = "UPDATE programPromotion Set TenCTKM=@name,rate=@rate,Due=@due Where Id=@id"
        await pool.connect()
        return await pool.request()
            .input('id', mssql.Int, newdata.Id)
            .input('name', mssql.NVarChar, newdata.TenCTKM)
            .input('rate', mssql.Int, newdata.rate)
            .input('due', mssql.NVarChar, newdata.Due)
            .query(sql, (err, data) => {
                if (err) {
                    end(true, null)
                    console.log(err)
                }
                else {
                    end(null, newdata)
                
                }
            })
    }

    this.DeletePromotionModel=async (newdata, end) => {

        var sql = "DELETE FROM programPromotion WHERE Id=@id";
        await pool.connect()
        return await pool.request()
            .input('id', mssql.Int, newdata.Id)
            .query(sql, (err, data) => {
                if (err) {
                    end(true, null)
                    console.log("lỖI CON MẸ NÓ RỒI", err)
                }
                else {
                    end(null, "Xóa sản phẩm thành công")
                }
            })
    }
}