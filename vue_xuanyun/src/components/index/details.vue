<template>
  <div>
    <Headers></Headers>
    <div class="contentWrap">
      <!-- 介绍部分 -->
      <div class="msgContent">
        <div>
          <!-- 左边部分 -->
          <div class="leftPart">
            <div class="leftPartTitle">
              <span class="titleContent">新中式酒店大厅模型</span>
              <span class="titleContent">ID:</span>
              <span class="titleContent">M0000173394</span>
              <span class="titleTip">VIP</span>
              <span class="soleTip">独家</span>
            </div>
            <div class="copyright">
              版权所属：
              <span>炫我科技</span>
            </div>
            <div class="modelClass">
              <span class="modelClassSpan">
                <span>新中式</span>/
                <span>VRay3.6</span>/
                <span>酒店餐饮</span>/
                <span>餐饮</span>/
                <span>2019-07-30 09:00:48</span>
              </span>
              <span class="modelClassRight">
                <span>
                  下载量(
                  <span>1</span>)
                </span>
                <span>
                  收藏(
                  <span>1</span>)
                </span>
                <span>
                  观看(
                  <span>69</span>)
                </span>
              </span>
            </div>
          </div>
          <!-- 右边部分 -->
          <div class="leftContent">
              <!-- 头像 -->
              <div class="rightPartImg">
                  <img src="http://127.0.0.1:3000/img/details/cnhk.png" alt="">
              </div>
              <!-- 文本 -->
              <div class="rightPartText">
                  <router-link to="">春暖花开</router-link>
                  <p>作品:<span>70</span></p>
              </div>
          </div>
        </div>
      </div>
      <!-- 图片展示 -->
      <div class="opusImgWrap">
          <div>
              <img src="http://127.0.0.1:3000/img/details/cnhk_bg1.jpg">
              <img src="http://127.0.0.1:3000/img/details/cnhk_bg2.jpg">
              <img src="http://127.0.0.1:3000/img/details/cnhk_bg3.jpg">
              <img src="http://127.0.0.1:3000/img/details/cnhk_bg4.jpg">
          </div>
      </div>
    </div>
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
.msgContent>div,
.opusImgWrap>div{
  width: 1500px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid #eee;
  box-sizing: border-box;
}
.opusImgWrap>div{
    text-align: center;
}
.leftPart{
    display: inline-block;
    box-sizing: border-box;
    width: 1200px;
    padding: 20px 10px 0 10px;
    box-sizing: border-box;
}
.leftPart>div{
    margin-bottom: 10px;
}
.titleContent {
  font: 18px 微软雅黑;
  color: #333;
  padding-right: 5px;
}
.titleTip,
.soleTip {
  display: inline-block;
  width: 34px;
  height: 18px;
  line-height: 18px;
  box-sizing: border-box;
  border-radius: 3px;
  text-align: center;
  font-family: SimSun, 宋体;
  font-size: 10px;
  color: #fff;
  background: #ff4d00;
  vertical-align: text-top;
  margin: 0 5px;
}
.modelClassSpan,
.rightPartText>p{
    font-family: "Microsoft YaHei", "微软雅黑";
    font-size: 12px;
    color: #999;
}
.modelClassRight{
    float: right;
}
.modelClassRight>span{
    font-size: 14px;
    padding: 0 20px;
    border-right: 1px solid #333;
}
.modelClassRight>span:last-child{
    border-right:none;
}
.leftContent{
    float: right;
    box-sizing: border-box;
    width: 298px;
    border-left: 1px solid #eeeeee;
    vertical-align: middle;
}
.rightPartImg{
        float: left;
    box-sizing: border-box;
    width: 152px;
    height: 100%;
    line-height: 125px;
    padding-left: 36px;
}
.rightPartImg>img{
    width: 94px;
    height: 94px;
    border-radius: 50%;
    vertical-align: middle;
}
.rightPartText{
    height:125px;
    padding-top:35px;
}
.rightPartText>a{
    font-family: "Microsoft YaHei", "微软雅黑";
    font-size: 14px;
    color: #333;
    padding-bottom: 12px;
}
.opusImgWrap>div>img{
    width: 1200px;
    margin-top: 25px;
}
</style>
