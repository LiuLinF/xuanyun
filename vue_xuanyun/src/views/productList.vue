<template>
  <div>
    <!-- 筛选最外层div -->
    <div>
      <!-- 内层 -->
      <div class="productlists">
        <!-- 头部：当前条件 -->
        <div class="headerList">
          <div class="selectTitile">当前条件：</div>
          <div class="selectedContent">
            <span>{{this.$store.state.atTemplate}}</span>
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
              <li
                v-for="(item,i) of family"
                :key="i"
                :data-id="item.fid"
                @click="onfamily"
              >{{item.template_type}}</li>
            </ul>
          </div>
          <!-- 2 模型小类 -->
          <div class="selectFilter">
            <div class="selectTitile">模型小类：</div>
            <ul>
              <li @click="onstyles" :data-id="item.sid" v-for="(item,i) of xiaofamily" :key="i">{{item.template_type}}</li>
            </ul>
          </div>
          <!-- 3 模型风格 -->
          <div class="selectFilter">
            <div class="selectTitile">模型风格：</div>
            <ul>
              <li :data-id="item.sid" v-for="(item,i) of styles" :key="i">{{item.template_title}}</li>
            </ul>
          </div>
          <!-- 4 软件版本 -->
          <div class="selectFilter">
            <div class="selectTitile">软件版本：</div>
            <ul>
              <li v-for="(item,i) of edition" :key="i">{{item.template_title}}</li>
            </ul>
          </div>
        </div>
        <div class="moreCondition">
          <span>全部</span>
          <span>
            <input type="checkbox" />VIP
          </span>
          <span>
            <input type="checkbox" />免费
          </span>
          <span>
            <input type="checkbox" />收费
          </span>
          <span class="icheckUpSpan">独家</span>
          <span class="icheckUpSpan">全景</span>
          <span class="icheckUpSpan">多空间</span>
          <span class="icheckUpSpan">评委推荐</span>
          <span>排序</span>
        </div>
      </div>
    </div>
    <div class="productlist">
      <ul>
        <li>
          <!-- 1 -->
          <div v-for="(item,i) of content" :key="i">
            <img :src="item.img_url" alt />
            <div>
              <router-link to>
                <span>{{item.title}}</span>
              </router-link>
              <router-link to>{{item.price}}</router-link>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      family: "",
      xiaofamily: "",
      styles: "",
      edition: "",
      content: ""
    };
  },
  created() {
    this.axios.get("/productlist/family").then(result => {
      this.family = result.data;
    });
    this.axios.get("/productlist/xiaofamily").then(result => {
      this.xiaofamily = result.data;
    });
    this.axios.get("/productlist/style").then(result => {
      this.styles = result.data;
    });
    this.axios.get("/productlist/edition").then(result => {
      this.edition = result.data;
    });
    if (!this.$route.query.fid) {
      this.axios.get("/productlist/content", { params: {} }).then(result => {
        this.content = result.data;
        console.log(this.content);
      });
    } else {
      var fid = this.$route.query.fid;
      this.axios
        .get("/productlist/content", { params: { fid: fid } })
        .then(result => {
          this.content = result.data;
          console.log(this.content);
        });
    }
  },
  methods: {
    onfamily(e) {
      var fid = e.target.dataset.id;
      this.$store.state.atTemplate = e.target.innerHTML;
      this.axios
        .get("/productlist/xiaofamily", { params: { fid: fid } })
        .then(result => {
          this.xiaofamily = result.data;
        });
      this.axios
        .get("/productlist/content", { params: { fid: fid } })
        .then(result => {
          this.content = result.data;
          console.log(this.content);
        });
    },
    onstyles(e) {
      var sid = e.target.dataset.id;
      this.axios
        .get("/productlist/content", { params: { sid: sid } })
        .then(result => {
          this.content = result.data;
          console.log(this.content);
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
.productlists {
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
.selectedContent > span:first-child {
  border: 1px dashed #f00;
  padding: 5px;
  font-size: 14px;
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
.moreCondition > span:last-child {
  float: right;
}
.moreCondition > .icheckUpSpan {
  border: 1px solid #e6e2e1;
  border-radius: 5px;
  background-color: #fff;
  box-sizing: border-box;
  font-size: 14px;
  padding: 5px 0;
  margin: 0 3px;
}
.productlist > ul > li {
  float: left;
  list-style: none;
  box-sizing: border-box;
}
.productlist {
  text-align: center;
  margin: 50px 0;
}
.productlist > ul {
  width: 1500px;
  margin: 0 auto;
  padding-left: 0;
}
.productlist > ul > li {
  float: left;
  list-style: none;
  box-sizing: border-box;
}
.productlist > ul:first-child a {
  display: inline-block;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
  color: #4e4e4e;
  box-sizing: border-box;
}
.productlist > ul:after {
  content: "";
  display: block;
  clear: both;
}
.productlist > ul:first-child > li:first-child a {
  color: #333;
  font-size: 18px;
}
.productlist > ul:first-child > li:first-child a:hover {
  color: gray;
}
.productlist > ul:last-child > li > div {
  width: 352px;
  height: 356px;
  background-color: #fff;
  float: left;
  margin: 30px 10px 0 12px;
  box-sizing: border-box;
}
.productlist > ul:last-child > li > div:hover {
  box-shadow: 1px 1px 10px -1px gray;
}
.productlist > ul:last-child > li > div > div {
  margin: 25px;
  text-align: left;
}
.productlist > ul:last-child > li > div > div > a span {
  margin-left: 20px;
}
.productlist > ul:last-child > li > div > div > a:last-child {
  font-size: 18px;
  color: #ff7f2c;
  float: right;
  line-height: 35px;
}
.productlist .user_pic {
  width: 42px;
  border-radius: 50%;
}
</style>
