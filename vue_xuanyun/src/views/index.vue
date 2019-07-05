<template>
  <div>
    <myheader></myheader>
    <navbar></navbar>
    <product></product>
    <myfooter></myfooter>
  </div>
</template>
<script>
import Header from "./index/header";
import Footer from "./index/footer";
import Navbar from "./index/nav_bar";
import Product from "./index/product1";
export default {
  components: {
    myheader: Header,
    myfooter:Footer,
    navbar:Navbar,
    product:Product
  },
  data(){
      return{

      }
  }
};
</script>
<style scoped>
</style>
