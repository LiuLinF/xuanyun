//使用express构建web服务器
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
/*引入路由模块*/
var index=require("./routes/index");

var app = express();
var server = app.listen(3000,function(){
	console.log(`服务器创建成功!`)
});
app.use(cors({
	origin:"http://127.0.0.1:5500"
}))
//使用body-parser中间件
app.use(bodyParser.urlencoded({
	extended:false
}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
 app.use("/index",index);

