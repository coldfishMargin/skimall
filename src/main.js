import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import Header from './components/Header.vue'
import Bottomnav from './components/Bottomnav.vue'
import Element from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';

axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.prototype.qs = qs
Vue.component('my-header',Header)
Vue.component('my-bottom',Bottomnav)
Vue.config.productionTip = false
Vue.prototype.axios = axios;
Vue.use(Element)


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
