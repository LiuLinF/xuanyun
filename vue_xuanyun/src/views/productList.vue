<template>
  <div>
    <!-- 筛选最外层div -->
    <div>
      <!-- 内层 -->
      <div class="productlist">
        <!-- 头部：当前条件 -->
        <div class="headerList">
          <div class="selectTitile">当前条件：</div>
          <div class="selectedContent">
            <span>全部模型</span>
            <span>
              共
              <span>22503</span>
              个结果
            </span>
          </div>
          <div class="selectInput">
            <input type="text" name id placeholder="搜索全站模型" />
            <span>
              <i></i>
            </span>
          </div>
        </div>
        <!-- 筛选列表 -->
        <div style="border:1px solid #e6e2e1">
          <!-- 1 模型大类 -->
          <div class="selectFilter">
            <div class="selectTitile">模型大类：</div>
            <ul>
              <li v-for="(item,i) of family" :key="i" @click="onfamily">{{item.template_type}}</li>
            </ul>
          </div>
          <!-- 2 模型小类 -->
          <div class="selectFilter">
            <div class="selectTitile">模型小类：</div>
            <ul>
              <li>家装别墅</li>
              <li>家装别墅</li>
            </ul>
          </div>
          <!-- 3 模型风格 -->
          <div class="selectFilter">
            <div class="selectTitile">模型风格：</div>
            <ul>
              <li>家装别墅</li>
              <li>家装别墅</li>
            </ul>
          </div>
          <!-- 4 软件版本 -->
          <div class="selectFilter">
            <div class="selectTitile">软件版本：</div>
            <ul>
              <li>家装别墅</li>
              <li>家装别墅</li>
            </ul>
          </div>
        </div>
        <div class="moreCondition">
          <span>全部</span>
          <span>
            <input type="checkbox" />VIP
          </span>
          <span>
            <input type="checkbox" />VIP
          </span>
          <span>
            <input type="checkbox" />VIP
          </span>
          <span class="icheckUpSpan">独家</span>
          <span class="icheckUpSpan">全景</span>
          <span class="icheckUpSpan">多空间</span>
          <span class="icheckUpSpan">评委推荐</span>
          <span>排序</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      family:""
    };
  },
  created(){
    this.axios.get("/productlist/family").then(result=>{
      this.family=result.data
      console.log(this.family)
    });
  },
  methods:{
    onfamily() {
      var fid=this.family[0].fid;
      console.log(this.family.fid)
      this.axios.get("/productlist/xiaofamily",{params:{fid:fid}}).then(result=>{
        // var obj=JSON.parse(result.data)
      this.family=result.data
      console.log(this.family)
    });
    }
  }
};
</script>
<style scoped>
ul {
  padding-inline-start: 0;
}
.headerList {
  height: 70px;
  line-height: 70px;
}
.productlist {
  width: 1500px;
  box-sizing: border-box;
  margin: 0 auto;
}
.selectTitile {
  display: inline-block;
  width: 95px;
}
.selectedContent {
  display: inline-block;
}
.selectedContent > span {
  margin: 0 15px;
}
.selectInput {
  float: right;
  position: relative;
  height: 64px;
  line-height: 64px;
  margin-right: 15px;
  box-sizing: border-box;
}
.selectInput > input,
.selectInput > span {
  display: inline-block;
  width: 236px;
  height: 40px;
  font-size: 14px;
  background: #fbfbfb;
  border-radius: 20px 0 0 20px;
  outline: 0;
  border: 1px solid #e6e6e6;
  padding-left: 20px;
  color: #333;
  box-sizing: border-box;
}
.selectInput > span {
  position: absolute;
  top: 12px;
  right: -15px;
  width: 60px;
  border-radius: 0 20px 20px 0;
  background: #ffae00;
}
.selectFilter + div {
  border-top: 1px solid #e6e2e1;
  box-sizing: border-box;
}
.selectFilter > .selectTitile {
  float: left;
  padding-left: 15px;
  line-height: 50px;
}
.selectFilter > ul {
  display: inline-block;
  list-style: none;
  margin-bottom: 0;
  background-color: #fff;
  box-sizing: border-box;
  font-size: 14px;
  display: flex;
  flex-wrap: wrap;
}
.selectFilter > ul > li {
  float: left;
  width: 100px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  box-sizing: border-box;
}
.selectFilter > ul > li:hover {
  color: #f00;
  cursor: pointer;
}
.moreCondition {
  margin-top: 10px;
  background-color: #fafafa;
}
.moreCondition > span {
  display: inline-block;
  width: 80px;
  text-align: center;
  padding: 15px 0 15px 15px;
}
.moreCondition > span:last-child{
    float: right;
}
.moreCondition>.icheckUpSpan{
    border: 1px solid #e6e2e1;
    border-radius: 5px;
    background-color: #fff;
    box-sizing: border-box;
    font-size: 14px;
    padding:5px 0;
    margin:0 3px;
}
</style>
