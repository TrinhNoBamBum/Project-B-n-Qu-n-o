const { pool, mssql } = require('../../connect')

module.exports = function () {
    this.getUser = async function (end) {
        var sql = "select * from NguoiSD"
        try {
            await pool.connect()
            const result = await pool.request().query(sql, (err, data) => {
                if (data.recordset.length > 0) {
                    end(null, data.recordset)
                }
                else {
                    end(true, null)
                }
            })
        }
        catch (err) {
            console.log(err)
        }
    }

    this.register = async function (newdata, end) {
        var sql = "INSERT INTO NguoiSD (Username,Password, Email, PhoneNumber, Address,FullName,Role_Id ) VALUES(@username, @password, @email, @phonenumber,  @address, @fullname,@Role_Id)";
        try {
            await pool.connect()
            return await pool.request()
                .input('username', mssql.NVarChar, newdata.Username)
                .input('password', mssql.NVarChar, newdata.Password)
                .input('email', mssql.NVarChar, newdata.Email)
                .input('phonenumber', mssql.NVarChar, newdata.PhoneNumber)
                .input('address', mssql.NVarChar, newdata.Address)
                .input('fullname', mssql.NVarChar, newdata.FullName)
                .input('Role_Id', mssql.Int, newdata.Role_Id)
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
        catch (err) {
            console.log(err)
        }
    }

    //Xóa thông tin người dùng
    this.DeleteInfoUser = async (id, end) => {

        var sql = "DELETE FROM NguoiSD WHERE Id=@id";
        await pool.connect()
        return await pool.request()
            .input('id', mssql.Int, id)
            .query(sql, (err, data) => {
                if (err) {
                    end(true, null)
                    console.log(err)
                }
                else {
                    console.log(id)
                    end(null, "Xóa người dùng thành công,")
                }
            })
    }

    this.logginModelDemo = async (newdata, end) => {
        try {
            var sql = "select * from NguoiSD n where n.Username=@username and n.Password=@password"
            await pool.connect()
            const result = await pool.request()
                .input('username', mssql.NVarChar, newdata.Username)
                .input('password', mssql.NVarChar, newdata.Password)
                .query(sql)
            end(null, result)
            
            
        }
        catch (err) {
            console.log(err)
            end(true, "Lỗi con mẹ nó rồi")

        }

    }

    this.EditUserModle= async (newdata, end) => {
        var sql = "UPDATE NguoiSD Set Username=@Username,Password=@Password,Email=@Email, PhoneNumber=@PhoneNumber, Address=@Address, Role_Id=@Role_Id, FullName=@FullName Where Id=@id"
        await pool.connect()
        return await pool.request()
            .input('id', mssql.Int, newdata.Id)
            .input('Username', mssql.NVarChar, newdata.Username)
            .input('Password', mssql.NVarChar, newdata.Password)
            .input('Email', mssql.NVarChar, newdata.Email)
            .input('PhoneNumber', mssql.NVarChar, newdata.PhoneNumber)
            .input('Address', mssql.NVarChar, newdata.Address)
            .input('Role_Id', mssql.Int, newdata.Role_Id)
            .input('FullName', mssql.NVarChar, newdata.FullName)
            .query(sql, (err, data) => {
                if (err) {
                    end(true, null)

                    console.log(err)
                }
                else {
                    end(null, newdata)
                    console.log(newdata)
                }
            })
    }
    this.FindUserModel = async (id, end) => {

        var sql = "Select * from NguoiSD where Role_Id=@id"
        await pool.connect()
        return await pool.request()
            .input('id', mssql.Int, id)
            .query(sql, (err, data) => {
                if (err) {

                    end(true, "Không có gì")
                }
                else {
                    end(null, data.recordset)
                }
            })
    }

}