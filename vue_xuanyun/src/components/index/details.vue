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
      <!-- 模板使用说明 -->
      <div class="model_des_text">
          <div>
              <p>模型使用说明：</p>
              <p>1.本站模型可能添加了版权声明，如果打开时弹出版权声明窗口，则需要安装炫云客户端的并且登陆过一次后才能正确打开及使用。</p>
              <p>2.本站新模型提供了有灯光和无灯光版本，没有安装炫云客户端或者要使用企业内部自建渲染集群时，建议下载无灯光版本，否则可能渲染失败。</p>
              <p>3. 本站所有模型，都公示了版权归属及原作者信息，如果发现作品被盗用的可以联系我们核实。</p>
              <p>4.本站用户只拥有模型的使用权，未经本站授权，会员不得以任何形式发布、传播、复制、转售该模型。如果因上述行为给本站造成损害，本站将依法追究其相关法律责任。</p>
              <p>5. 本站免费模型供所有注册用户免费下载，也不收取流量费。</p>
              <p>6.本站VIP模型仅供VIP用户才能下载，购买VIP请登陆用户中心按照提示购买，或者留意市场活动以获得免费兑换码。</p>
              <p>7.本站付费模型需使用炫豆支付下载，购买炫豆请登陆用户中心充值，或者留意市场活动免费获取。付费模型在第一次购买后72小时以外重复下载，每次收取流量费0.6炫豆。</p>
              <p>8. 本站模型禁止恶意下载，如果出现“下载过于频繁”提示，请等待3分钟后再下载。</p>
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
.opusImgWrap>div,
.model_des_text>div{
  width: 1500px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid #eee;
  box-sizing: border-box;
}
.opusImgWrap>div{
    text-align: center;
    border:none;
    padding:25px 0;
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
.opusImgWrap>div>img:first-child{
    margin:0;
}
.model_des_text>div>p{
    letter-spacing: 4px;
    color:#bbb;
    font-size: 15px;
    margin-left:30px;
}
.model_des_text>div>p:first-child{
    font-family: "Microsoft YaHei", "微软雅黑";
    font-size: 16px;
    color: #000;
    font-weight: bold;
    margin-top: 30px;
}
</style>
