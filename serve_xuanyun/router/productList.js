const express=require("express");
const router=express.Router();
const pool=require("../pool");
    // 请求大类
    router.get("/family",(req,res)=>{
        var sql="select * from xy_template_family"
        pool.query(sql,[],(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
    // 请求小类
    router.get("/xiaofamily",(req,res)=>{
        var id=req.query.fid;
        if(!id){
            id=1;
        }
        var sql="select * from xy_template_xiaofamily where fid=?"
        pool.query(sql,[id],(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
    // 请求风格
    router.get("/style",(req,res)=>{
        var sql="select * from xy_template_style"
        pool.query(sql,[],(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
    // 请求版本
    router.get("/edition",(req,res)=>{
        var sql="select * from xy_template_edition"
        pool.query(sql,[],(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
module.exports=router;