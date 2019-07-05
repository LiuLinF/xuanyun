import Vue from 'vue'
import Router from 'vue-router'
import Login from './views/login.vue'
import Reg from './views/reg.vue'
import Index from './views/index.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/login",component:Login},
    {path:"/reg",component:Reg},
    {path:"/index",component:Index},
  ]
})
