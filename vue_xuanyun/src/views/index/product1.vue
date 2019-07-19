<template>
    <div class="index_product">
        <ul>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">VIP模型</a></li>
            <li><a href="#">更多&gt;&gt;</a></li>
        </ul>
        <ul>
            <li>
                <!-- 1 -->
                <div id="p1">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
                <!-- 2 -->
                <div id="p2">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a> 
                    </div>
                </div>
                <!-- 3 -->
                <div id="p3">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
                <!-- 4 -->
                <div id="p4">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
                <!-- 5 -->
                <div id="p5">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
                <!-- 6 -->
                <div id="p6">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
                <!-- 7 -->
                <div id="p7">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
                <!-- 8 -->
                <div id="p8">
                     <img src="../../img\index\product_vip\product_pic/vip1.jpg" alt="">
                    <div>
                        <a href="#">
                            <img class="user_pic" src="../../img\index\product_vip\user_pic/getHeader.png" alt="">
                            <span>mm4521</span>
                        </a>
                        <a href="#">VIP</a>
                    </div> 
                </div>
            </li>
        </ul>
    </div>
</template>
<script>
export default {
    data(){
        return {

        }
    },created() {
        
    },
}
</script>
<style scoped>
    .index_product{
	width: 100%;
	text-align: center;
	margin:50px 0;
}
.index_product>ul{
	width: 1500px;
	margin: 0 auto;
    padding-left:0;
}
.index_product>ul>li{
	float: left;
	list-style: none;
	box-sizing: border-box;
	
}
.index_product>ul:first-child a{
	display: inline-block;
	width: 105px;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
	color: #4e4e4e;
	box-sizing: border-box;
}
.index_product>ul:after{
	content: "";
	display: block;
	clear: both;
}
.index_product>ul:first-child>li a{
	width: 90px;
	text-align: right;
}
.index_product>ul:first-child>li:first-child a{
	color: #333;
	font-size: 24px;
}
.index_product>ul:first-child>li:first-child a:hover{
	color: gray;
}
.index_product>ul:first-child>li:last-child{
	float: right;
}
.index_product>ul:last-child>li>div{
	width: 352px;
	height: 356px;
	background-color: #fff;
	float: left;
	margin:30px 30px 0 0;
	box-sizing: border-box;
}
.index_product>ul:last-child>li>div:nth-child(4),
.index_product>ul:last-child>li>div:nth-child(8){
	margin-right: 0;
}
.index_product>ul:last-child>li>div:hover{
	box-shadow: 1px 1px 10px -1px gray;
}
.index_product>ul:last-child>li>div>div{
	margin: 25px;
	text-align: left;
}
.index_product>ul:last-child>li>div>div>a span{
	margin-left:20px; 
}
.index_product>ul:last-child>li>div>div>a:last-child{
	font-size: 18px;
    color: #ff7f2c;
    float: right;
    line-height: 35px;
}
.index_product .user_pic{
	width: 42px;
	border-radius: 50%;
}
</style>

