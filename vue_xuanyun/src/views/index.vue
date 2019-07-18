<template>
  <div>
    <myheader></myheader>
    <carousel></carousel>
    <navbar></navbar>
    <!-- <product></product> -->
    <myfooter></myfooter>
  </div>
</template>
<script>
import Header from "./index/header";
import Footer from "./index/footer";
import Navbar from "./index/nav_bar";
import carousel from "./index/carousel";
export default {
  components: {
    myheader: Header,
    myfooter:Footer,
    navbar:Navbar,
    // product:Product,
    carousel:carousel
  },
  data(){
      return{

      }
  }
};
</script>
<style scoped>
</style>
