const express=require("express");
const router=express.Router();
const pool=require("../pool");
    router.get("/",(req,res)=>{
        var uname=req.query.uname;
        var upwd=req.query.upwd;
        var sql="select uname,upwd from xy_user where uname=? and upwd=?"
        pool.query(sql,[uname,upwd],(err,result)=>{
            if(err) throw err
            if(result.length>0){
                res.send(result)    
            }else{
                res.send({code:-1,msg:"查无此人"})
            }
        })
    })
module.exports=router;