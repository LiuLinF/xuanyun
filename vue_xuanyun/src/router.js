import Vue from 'vue'
import Router from 'vue-router'
import Hone from './views/hone.vue'
import Login from './views/login.vue'
import Reg from './views/reg.vue'
import Index from './views/index.vue'
import recent_news from './views/recent_news.vue'
import cloud_rendering from './views/cloud_rendering.vue'
import panorama from './views/panorama.vue'
import cloud_classroom from './views/cloud_classroom.vue'
import productList from './views/productList.vue'
import details from './components/index/details.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Hone,
    children:[
      {path:"/",component:Index},
      {path:"/recent_news",component:recent_news},
      {path:"/cloud_rendering",component:cloud_rendering},
      {path:"/panorama",component:panorama},
      {path:"/cloud_classroom",component:cloud_classroom},
    ]},
    {path:"/login",component:Login},
    {path:"/productlist",component:productList},
    {path:"/reg",component:Reg},
    {path:"/details",component:details},
  ]
})