const express=require("express");
const router=express.Router();
const pool=require("../pool");
    router.get("/",function(req,res){
        var sql=`select * from xy_index_product_vip order by sort`
        pool.query(sql,[],function(err,result){
            if(err) throw err;
            else{
                res.send(result);
            }
        })
    })

    router.get("/carousel",(req,res)=>{
        var sql="select img_url from xy_carousel"
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            res.send(result)
        })
    })
    router.get("/family",(req,res)=>{
        var sql="select fid,template_type from xy_template_family"
        pool.query(sql,(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
    router.get("/productvip",(req,res)=>{
        var sql="select * from xy_index_product_vip"
        pool.query(sql,(err,result)=>{
            if(err) throw err
            res.send(result)
        })
    })
module.exports=router;