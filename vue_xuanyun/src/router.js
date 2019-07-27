import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/login.vue'
import Reg from './views/reg.vue'
import Index from './views/index.vue'
import recent_news from './views/recent_news.vue'
import carousel from './components/index/carousel.vue'
import Header from "./components/index/header.vue"
import Footer from "./components/index/footer.vue"
import Navbar from "./components/index/nav_bar.vue"

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Index},
    {path:"/login",component:Login},
    {path:"/reg",component:Reg},
    {path:"/carousel",component:carousel},
    {path:"/header",component:Header},
    {path:"/footer",component:Footer},
    {path:"/narbar",component:Navbar},
    {path:"/recent_news",component:recent_news},

  ]
})
