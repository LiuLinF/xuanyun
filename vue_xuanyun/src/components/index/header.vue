<template>
  <!--头部-->
  <header class="container-fulls">
    <div class="header_style">
      <div class="ml-5 p-0 d-inline-block">
        <a href>
          <img class="py-3" src="http://127.0.0.1:3000/img/index/shine_new_logo-ni.png" alt />
        </a>
      </div>
      <div class="p-0 d-inline-block">
        <ul class="list-unstyled">
          <li class="d-inline-block px-3 py-3">
            <router-link to="/recent_news">最新动态</router-link>
          </li>
          <li class="d-inline-block px-3 py-3">
            <router-link to="/cloud_rendering">云渲染</router-link>
          </li>
          <li class="d-inline-block px-3 py-3">
            <router-link to="/recent_news">云模型</router-link>
          </li>
          <li class="d-inline-block px-3 py-3">
            <router-link to="/cloud_classroom">云课堂</router-link>
          </li>
          <li class="d-inline-block px-3 py-3">
            <router-link to="/panorama">全景图</router-link>
          </li>
          <li class="d-inline-block px-3 pb-3 h2">
            <a href="#">...</a>
            <ul class="p-4 display_ul">
              <li class="h6">RENDERWOW</li>
              <li class="h6">炫我科技</li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="p-0 py-3 d-inline-block" style="text-align: right;">
        <span>
          <a href="#" class="btn btn-primary mr-5">下载客户端</a>
        </span>
        <router-link to="/login" v-if="!loginname">登录</router-link>
        <router-link to="#">{{uname}}</router-link>
        <span class="px-4">|</span>
        <router-link to="/reg" v-if="!loginname">注册</router-link>
        <a href="JavaScript:;" @click="nameouts">{{nameout}}</a>
      </div>
    </div>
  </header>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            nameout:"",
            loginname:false,
        }
    },
    methods: {
        nameouts() {
        this.$confirm('此操作将退出该用户, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$message({
            type: 'success',
            message: '已退出!'
          });
            location.href="/#/login"
            sessionStorage.clear("name");
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消'
          });          
        });
      }
    },
    created() {
        var btn=document.getElementsByClassName("hearer_btn")[0];
        var n=sessionStorage.getItem("name")
        if(n){
            this.uname=n;
            this.loginname=true
            this.nameout="退出"
        }
    },
}
</script>
<style scoped>
.container-fulls > div {
  width: 1500px;
  margin: 0 auto;
  position: relative;
}
.container-fulls > div > div:nth-child(2) {
  margin-left: 300px;
}
.container-fulls > div > div:last-child {
  margin-left: 215px;
}
.container-fulls > div > div:nth-child(2) > div {
  position: absolute;
  top: 50px;
  right: 353px;
  background-color: #282828;
  display: none;
}
.header_style > div:nth-child(3) a.btn {
  background-color: #ff9f00;
  border-radius: 1rem;
  border: 0;
  outline: 0;
}
.header_style > div:nth-child(2) li:hover,
.header_style > div:nth-child(2) li:hover ul {
  background-color: #282828;
  display: block;
}
.header_style > div:nth-child(2) li a,
.header_style > div:nth-child(3) > a {
  color: #1c1c1c;
}
.header_style > div:nth-child(2) li:hover a,
.header_style > div:nth-child(3) > a:hover {
  color: #fd7e14;
  text-decoration: none;
}
.display_ul {
  position: absolute;
  top: 50px;
  left: 858px;
  color: #fff;
  background-color: #1c1c1c;
  list-style-type: none;
  z-index: 2;
  display: none;
  z-index: 999;
}
</style>

