<template>
    <header class="container-full bg-dark mt-5">
    <div>
        <div class="footer_style">
            <ul class="list-unstyled breadcrumb m-0 mb-3">
                <li class="float-left breadcrumb-item">
                    <a class="text-white" href="">
                        <img class="pr-2" src="../../img/footer/shinewonder_service_de-ni.png" alt="" />
                        <img class="footer_img_erweima" src="../../img/footer/fuwu-ni.jpg" alt="">
                        炫云服务号</a>
                </li>
                <li class="float-left breadcrumb-item">
                    <a class="text-white" href="">
                        <img class="pr-2" src="../../img/footer/reading_shinewonder-ni.png" alt="" />
                        <img class="footer_img_erweima" src="../../img/footer/dingRead-ni.jpg" alt="">
                        炫云订阅号</a>
                </li>
                <li class="float-left breadcrumb-item">
                    <a class="text-white" href="">
                        <img class="pr-2" src="../../img/footer/shinewonder_weibo_de-ni.png" alt="" />
                        <img class="footer_img_erweima" src="../../img/footer/weibo-ni.jpg" alt="">
                        炫云微博</a>
                </li>
                <li class="float-left breadcrumb-item">
                    <a class="text-white" href="">关于我们</a>
                </li>
                <li class="float-left breadcrumb-item">
                    <a class="text-white " href="">加入我们</a>
                </li>
                <li class="float-left breadcrumb-item">
                    <a class="text-white" href="">法律声明</a>
                </li>
            </ul>
            <div class="row mb-3">
                <div class="col-1">
                    <p class="text-white">交流联系</p>
                </div>
                <div class="p-0 mb-3 mr-4">
                    <p class="text-white mb-0">客服电话：400-926-3398</p>
                    <a href="#" class="text-white mb-0">客服QQ：800-021-702</a>
                </div>
                <div class="col-2 p-0">
                    <p class="text-white mb-0">客服电话：400-926-3398</p>
                    <p class="text-white mb-0">客服电话：400-926-3398</p>

                </div>
                <div class="col-7 my-lg-0 p-0">
                    <p class="text-white mb-0">公共邮箱：service@shinewonder.com</p>
                    <p class="text-white mb-0">公司地址：北京市海淀区西二旗西路2号院领秀新硅谷B区71号楼107室</p>
                </div>
            </div>
            <p class="d-inline-block px-4 pb-5 my_size  text-white">©2009-2018北京炫我科技有限公司</p>
            <p class="d-inline-block px-3 pb-5 my_size  text-white">京ICP备13039808号|京公网安备11010802024381号</p>
            <p class="d-inline-block px-3 pb-5 my_size  text-white">增值电信业务经营许可证：京B2-20171217</p>
        </div>
    </div>
</header>
</template>
<script>
export default {
    data(){
        return {

        }
    }
}
</script>
<style scoped>
    .container-full>div{
	width:1200px;
	margin-left:200px;
	padding-top:50px;
	position:relative;
}
.breadcrumb{
    background-color: transparent;
}
.breadcrumb-item + .breadcrumb-item::before{
    content: "|";
    color: #fff;
}
.footer_style>ul li a:hover,.footer_style>div a:hover{
    color:#fd7e14 !important;
    text-decoration: none;
}
.footer_img_erweima{
	position:absolute;
	top:-40px;
	left:160px;
	width: 100px;
	display:none;
}
.footer_style>ul li a:hover img:nth-child(2){
	display:block;
}
.footer_style>ul li:first-child a .footer_img_erweima{
	left:30px;
}
.footer_style>ul li:nth-child(3) a .footer_img_erweima{
	left:288px;
}
.footer_style>ul,.footer_style>div{
    border-bottom: 2px dashed #fff;
}

</style>
