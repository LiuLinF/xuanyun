import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/login.vue'
import Reg from './views/reg.vue'
import Index from './views/index.vue'
import product from './views/index/product1.vue'
import carousel from './views/index/carousel.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/login",component:Login},
    {path:"/reg",component:Reg},
    {path:"/carousel",component:carousel},
    {path:"/product",component:product},

  ]
})
