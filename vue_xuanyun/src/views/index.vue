<template>
  <div>
    <carousel></carousel>
    <Navbar></Navbar>
  </div>
</template>
<script>
import carousel from '../components/index/carousel.vue'
import Navbar from "../components/index/nav_bar.vue"
export default {
  components: {
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
