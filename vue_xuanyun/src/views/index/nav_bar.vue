<template>
  <nav>
    <ul>
      <li>
        <a href="#">
          <span>
            <img src="img/index/vip_item_banner_logo.png" alt />
          </span>
          VIP模板
        </a>
      </li>
      <li>
        <a href="#">
          <span>
            <img src="img/index/vip_item_banner_logo.png" alt />
          </span>
          VIP模板
        </a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">VIP模板</a>
      </li>
      <li>
        <a href="#">
          <span>
            <img src="img/index/vip_item_banner_logo.png" alt />
          </span>
          VIP模板
        </a>
      </li>
      <li>
        <a href="#">
          <span>
            <img src="img/index/vip_item_banner_logo.png" alt />
          </span>
          VIP模板
        </a>
      </li>
    </ul>
    <hr style="margin: 0" />
    <div class="count">
    <el-tabs v-model="activeName" @tab-click="handleClick">
    <el-tab-pane label="用户管理" name="first">用户管理</el-tab-pane>
    <el-tab-pane label="配置管理" name="second">配置管理</el-tab-pane>
    <el-tab-pane label="角色管理" name="third">角色管理</el-tab-pane>
    <el-tab-pane label="定时任务补偿" name="fourth">定时任务补偿</el-tab-pane>
  </el-tabs>
    </div>
  </nav>
</template>
<script>
export default {
    data() {
      return {
          activeName:"first"
      };
    },
    methods: {
        handleClick(){
            console.log(1)
        }
    }
}

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
.count {
  width: 415px;
  margin: 0 auto;
}
.el-tabs__nav-wrap::after {
  display: none;background-color:none;
}
</style>
