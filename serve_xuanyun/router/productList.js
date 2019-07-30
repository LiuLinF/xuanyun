const express=require("express");
const router=express.Router();
const pool=require("../pool");
    router.get("/family",(req,res)=>{
        var sql="select * from xy_template_family"
        pool.query(sql,[],(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
    router.get("/xiaofamily",(req,res)=>{
        var id=req.query.fid;
        console.log(req.query.fid)
        if(id==""){
            id=1;
        }
        var sql="select * from xy_template_xiaofamily where fid=?"
        pool.query(sql,[id],(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
module.exports=router;