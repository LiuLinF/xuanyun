<template>
  <div>
    <Header></Header>
    <carousel></carousel>
    <Navbar></Navbar>
    <Footer></Footer>
  </div>
</template>
<script>
import carousel from '../components/index/carousel.vue'
import Header from "../components/index/header.vue"
import Footer from "../components/index/footer.vue"
import Navbar from "../components/index/nav_bar.vue"
export default {
  components: {
    Header,
    Footer,
    Navbar,
    carousel
  },
  data(){
      return{

      }
  }
};
</script>
<style scoped>
</style>
