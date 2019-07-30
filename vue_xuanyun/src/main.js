import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'element-ui/lib/theme-chalk/index.css'
import ElementUI from 'element-ui';
import Headers from "./components/index/header.vue";
import Footers from "./components/index/footer.vue";

Vue.component("Headers",Headers)
Vue.component("Footers",Footers)
Vue.config.productionTip = false
Vue.use(ElementUI)
//引入axios文件
import axios from "./axios"
Vue.use(axios)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
