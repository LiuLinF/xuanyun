<template>
  <div>
    <myheader></myheader>
    <carousel></carousel>
    <navbar></navbar>
    <myfooter></myfooter>
  </div>
</template>
<script>
import Header from "../components/index/header";
import Footer from "../components/index/footer";
import Navbar from "../components/index/nav_bar";
import carousel from "../components/index/carousel";
export default {
  components: {
    myheader: Header,
    myfooter:Footer,
    navbar:Navbar,
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
