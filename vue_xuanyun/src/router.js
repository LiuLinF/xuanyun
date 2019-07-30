import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/login.vue'
import Reg from './views/reg.vue'
import Index from './views/index.vue'
import recent_news from './views/recent_news.vue'
import cloud_rendering from './views/cloud_rendering.vue'
import panorama from './views/panorama.vue'
import productList from './views/productList.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/login",component:Login},
    {path:"/reg",component:Reg},
    {path:"/recent_news",component:recent_news},
    {path:"/cloud_rendering",component:cloud_rendering},
    {path:"/panorama",component:panorama},
    {path:"/productlist",component:productList},
  ]
})
