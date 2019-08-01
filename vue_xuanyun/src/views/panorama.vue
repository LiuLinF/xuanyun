<template>
    <div>
    <!--全景图-->
    <div class="panorama_bg">
        <div>
            <img src="http://127.0.0.1:3000/img/panorama/panoBannerText.png" alt=""/>
        </div>
        <a href="#">合成全景图</a>
    </div>
    <!--网站服务-->
    <div class="web_serve">
        <img src="http://127.0.0.1:3000/img/panorama/contentLine.png" alt=""/>
        <div>网站服务</div>
    </div>
    <!--网站服务列-->
    <div class="panorama_card_wrap">
        <ul>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon1.png" alt=""/>
                <p>快速合成全景</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon2.png" alt=""/>
                <p>作品查看</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon3.png" alt=""/>
                <p>作品分享</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon4.png" alt=""/>
                <p>作者信息及LOGO自定义显示</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon5.png" alt=""/>
                <p>热点添加</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon6.png" alt=""/>
                <p>音频添加</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon7.png" alt=""/>
                <p>场景编辑</p>
            </li>
            <li>
                <img src="http://127.0.0.1:3000/img/panorama/icon8.png" alt=""/>
                <p>设置访问密码</p>
            </li>
        </ul>
    </div>
    <!--广告-->
    <div class="panorama_advertising">
        <img style="width: 100%" src="http://127.0.0.1:3000/img/panorama/adver_index.png" alt=""/>
        <p>更多服务待推出，有任何建议或需求，可以联系客服或加以下QQ群进行咨询。</p>
    </div>
    </div>
</template>
<script>
export default {
    data (){
        return {

        }
    }
}
</script>
<style scoped>
ul{
    padding-inline-start:0;
}
.panorama_bg{
    width: 100%;
    height: 556px;
    background-image: url(http://127.0.0.1:3000/img/panorama/panoindexbanner.png);
    background-size: 100%;
    text-align: center;
}
.panorama_bg>div{
    padding-top: 122px;
}
.panorama_bg>a{
    display: inline-block;
    width: 220px;
    height: 40px;
    border-radius: 1rem;
    background-color: #ffc926;
    line-height: 40px;
    font-size: 18px;
    color: #000;
    text-align: center;
    margin-top: 40px;
}
.panorama_bg>a:hover{
    text-decoration: none;
}
.web_serve{
    position: relative;
    width: 100%;
    text-align: center;
    margin:58px 0 35px 0;
}
.web_serve>div{
    position: absolute;
    top:-4px;
    left: 47.5%;
    color: #575757;
    font-size: 20px;
}
.panorama_card_wrap{
    position: relative;
    box-sizing: border-box;
	margin:0 auto;
}
.panorama_card_wrap:after{
    content: '';
    display: block;
    clear: both;
}
.panorama_card_wrap>ul{
	width:1490px;
	margin:0 auto;
}
.panorama_card_wrap li{
    float: left;
    list-style-type: none;
    width: 350px;
    height: 180px;
    background: #fff;
    margin: 0 30px 30px 0;
    text-align: center;
    box-sizing: border-box;
}
.panorama_card_wrap li>img{
    width: 63px;
    margin:30px 0;
}
.panorama_card_wrap li:nth-child(4),.panorama_card_wrap li:nth-child(8){
    margin-right: 0;
}
.panorama_card_wrap li>p{
    font-size: 18px;
    color: #000;
    font-weight: bold;
}
.panorama_advertising{
    width: 100%;
    position: relative;
}
.panorama_advertising>p{
    position: absolute;
    top: 15px;
    left: 25%;
    font-size: 20px;
    color: #fff;
    font-style: italic;
    z-index: 2;
}

</style>

