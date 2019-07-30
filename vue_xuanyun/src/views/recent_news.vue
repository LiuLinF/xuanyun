<template>
  <div>
    <Headers></Headers>
    <div>
      <img class="bg_img" src="http://127.0.0.1:3000/img/index/news_banner-ni.jpg" alt />
      <div class="index_wrap">
        <ul>
          <li>
            <a href="#">特惠专区</a>
          </li>
          <li>
            <a href="#">最新活动</a>
          </li>
          <li>
            <a href="#">新品发布</a>
          </li>
          <li>
            <a href="#">大赛</a>
          </li>
          <li>
            <a href="#">行业新闻</a>
          </li>
          <li>
            <a href="#">技术文章</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="index_img_wrap">
      <!--1-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/f098025109286903f34d582f38d3cb18.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">3ds Max效果图25元封顶</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--2-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/c7504d5507bd8fdb0e4d58ab8964cc47.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">新用户注册赠送调整公告(2019)</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--3-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/be5c3d9470a85137a53a04c18fb3aac0.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">效果图立减5元</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--4-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/a3dca0690b76a9f3be4e700a2b698e95.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">SketchUp效果图25元封顶</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--5-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/dca5af39e4f66a66f955e77a52af5611.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">推荐新用户，推荐一名奖励20元</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--6-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/c5192c768e7c80df54c73755b3e6fc36.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">动画渲染部分5折</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--7-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/bff8a6959367e29509694ff7404a9998.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">2019新年特惠活动</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
      <!--8-->
      <div>
        <div>
          <a href="#">
            <img
              src="http://127.0.0.1:3000/img/index/recent_news/8c15d4cfd87f81f413220cbe10365877.jpg"
              alt
            />
          </a>
          <div class="card_text_wrap">
            <a href="#">2018炫云决战双十二活动</a>
            <p>2019/4/09</p>
            <div>
              <img src="http://127.0.0.1:3000/img/index/recent_news/card_tip-ni.png" alt />
              <span>优惠活动</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="paging_btn">
      <a href="#">上一页</a>
      <span class="paging_btn_span1">1</span>
      <span>/</span>
      <span>2</span>
      <a href="recent_news2.html">下一页</a>
    </div>
    <Footers></Footers>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  }
};
</script>
<style scoped>
ul {
  padding-inline-start: 0;
}
.bg_img {
  position: relative;
  top: 4px;
  width: 100%;
}
.index_wrap {
  height: 54px;
  background: #fff;
}
.index_wrap > ul {
  width: 1200px;
  margin: 0 auto;
  box-sizing: border-box;
}
.index_wrap > ul li {
  float: left;
  width: 200px;
  height: 54px;
  line-height: 54px;
  list-style: none;
  font-size: 20px;
  text-align: center;
}
.index_wrap > ul li a {
  text-decoration: none;
  color: #000;
}
.index_wrap > ul li:hover {
  background-color: #fd7e14;
}
.index_img_wrap::after{
  content: "";
  display: block;
  clear: both;
}
.index_img_wrap > div {
  width: 1220px;
  margin-top: 90px;
  margin: 0 auto;
}
.index_img_wrap > div > div {
  position: relative;
  width: 590px;
  height: 420px;
  margin: 10px;
  float: left;
}
.index_img_wrap > div > div:hover {
  box-shadow: 0px 0px 10px #e0d8d8;
}
.index_img_wrap > div > div > a img {
  position: relative;
  width: 100%;
  height: 320px;
}
.card_text_wrap {
  position: relative;
  top: -5px;
  width: 100%;
  height: 100px;
  padding-top: 20px;
  padding-left: 40px;
  background-color: #fff;
  box-sizing: border-box;
}
.card_text_wrap > a {
  font-size: 18px;
  text-decoration: none;
  color: #000;
}
.card_text_wrap > a:hover {
  color: #fd7e14;
}
.card_text_wrap > p {
  position: absolute;
  font-size: 12px;
  color: #8c8c8c;
}
.card_text_wrap > div {
  display: inline-block;
  position: relative;
}
.card_text_wrap > div > span {
  position: absolute;
  top: 6px;
  left: 30px;
  font-size: 16px;
  color: #fff;
}
.paging_btn {
  float: right;
  width: 100%;
  text-align: right;
  margin-top: 20px;
  margin-right: 190px;
}
.paging_btn a {
  display: inline-block;
  width: 80px;
  height: 22px;
  color: #f6d8aa;
  box-sizing: border-box;
  text-align: center;
  line-height: 20px;
  border: 1px solid #f6d8aa;
  text-decoration: none;
}
.paging_btn a:hover {
  background-color: #fba02f;
  color: #fff;
}
.paging_btn .paging_btn_span3,
.paging_btn .paging_btn_span1 {
  font: 20px Arial;
  color: #f59c27;
}
.paging_btn > span {
  font-size: 16px;
  color: #888888;
}
</style>

