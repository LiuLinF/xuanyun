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
module.exports=router;