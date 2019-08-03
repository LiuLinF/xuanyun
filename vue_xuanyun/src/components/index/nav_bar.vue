<template>
  <div>
    <nav>
      <ul>
        <li>
          <router-link to="/productlist">
            <span>
              <img src="http://127.0.0.1:3000/img/index/vip_item_banner_logo.png" alt />
            </span>
            VIP模板
          </router-link>
        </li>
        <li>
          <router-link to="/productlist">
            <span>
              <img src="http://127.0.0.1:3000/img/index/vip_item_banner_logo.png" alt />
            </span>
            免费模板
          </router-link>
        </li>
        <li v-for="(item,i) of family" :key="i">
          <span @click="toProductList($event)" :data-id="item.fid">{{item.template_type}}</span>
        </li>
        <li>
          <router-link to="/productlist">
            <span>
              <img src="http://127.0.0.1:3000/img/index/vip_item_banner_logo.png" alt />
            </span>
            模板之星
          </router-link>
        </li>
        <li>
          <router-link to="/productlist">
            <span>
              <img src="http://127.0.0.1:3000/img/index/vip_item_banner_logo.png" alt />
            </span>
            VIP会员
          </router-link>
        </li>
      </ul>
      <hr style="margin: 0" />
      <ul class="nav_item">
        <li class="active" @click="onNavItem($event)" data-number=1>首页</li>
        <li @click="onNavItem($event)" data-number=2>最新</li>
        <li @click="onNavItem($event)" data-number=3>推荐</li>
        <li @click="onNavItem($event)" data-number=4>最热</li>
      </ul>
    </nav>
    <div class="index_product">
      <ul>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">VIP模型</router-link>
        </li>
        <li>
          <router-link to="">更多&gt;&gt;</router-link>
        </li>
      </ul>
      <!-- 面板1 -->
      <ul v-show="number==1">
        <li>
          <!-- 1 -->
          <div v-for="(item,i) of carouselList" :key="i">
            <img :src="item.product_pic" alt />
            <div>
              <router-link to>
                <img class="user_pic" :src="item.user_pic" />
                <span>{{item.name}}</span>
              </router-link>
              <router-link to>{{item.cardPrice}}</router-link>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <!-- 面板2 -->
      <ul v-show="number==2">
        <li>2</li>
      </ul>
      <!-- 面板3 -->
      <ul v-show="number==3">
        <li>3</li>
      </ul>
      <!-- 面板4 -->
      <ul v-show="number==4">
        <li>4</li>
      </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      activeName: "first",
      family: "",
      productvip: "",
      carouselList:"",
      number:1
    };
  },
  methods: {
    onNavItem(e) {
      var nav_item = document.getElementsByClassName("nav_item")[0].children;
      for (var item of nav_item) {
        item.classList.remove("active");
      }
      e.target.classList.add("active");
      this.number=e.target.dataset.number;
    }
  },
  created() {
    this.axios.get("/index/family").then(result => {
      this.family = result.data;
      console.log(this.family)
    });
    this.axios.get("/index/productvip").then(result => {
      this.productvip = result.data;
    });
    this.axios.get("/index/productvip").then(result=>{
           this.carouselList=result.data;
       })
       
  },
  methods:{
    toProductList(e){
      var fid=`/productlist?fid=${e.target.dataset.id}`
      this.$router.push(fid)
      this.$store.state.atTemplate=e.target.innerHTML
      console.log(e.target.dataset.id)
    }
  }
};
</script>
<style scoped>
nav {
  width: 100%;
  text-align: center;
  margin: 0 auto;
  background-color: #fff;
  box-shadow: 0px 0px 4px -1px gray;
  box-sizing: border-box;
}
nav li,
.index_product > ul > li {
  float: left;
  list-style: none;
  box-sizing: border-box;
}
nav li{
  width: 125px;
}
nav > ul:first-child {
  width: 1400px;
  height: 70px;
  line-height: 70px;
  margin: 0 auto;
  box-sizing: border-box;
}
nav > ul li a,
.index_product > ul:first-child a {
  display: inline-block;
  width: 105px;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
  color: #4e4e4e;
  box-sizing: border-box;
}
a:hover {
  text-decoration: none;
  color: #ff9f00 !important;
}
nav li img {
  padding-right: 10px;
}
nav > ul:last-child {
  width: 470px;
  height: 65px;
  line-height: 60px;
  margin: 0 auto;
  box-sizing: border-box;
}
nav > ul:last-child > li {
  box-sizing: border-box;
}
nav .active {
  border-bottom: 5px solid orange;
}
nav > ul:first-child li:last-child a,
nav > ul:first-child li:nth-child(11) a {
  border-radius: 14px;
  background-color: #e7e7e7;
  height: 30px;
  line-height: 30px;
  margin-right: 20px;
}
.nav_item li {
  display: inline-block;
  width: 100px;
}
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
