<template>
  <div class="block">
    <el-carousel trigger="click" height="390px">
      <el-carousel-item v-for="(item,i) in data" :key="i">
        <img class="carousel_img"  :src="item.img_url">
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
<script>
export default {
    data(){
        return {
            data:""
        }
    },
    created() {
        this.axios.get("/index/carousel").then(result=>{
            this.data=result.data
        })
    },
}
</script>
<style>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    /* line-height: 150px; */
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
  .carousel_img{
      width: 100%;
  }
</style>