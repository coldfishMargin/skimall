import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Msmall from '../views/Msmall.vue'
import Login from '../views/Login.vue'
import Product from '../views/Product.vue'
import Person from '../views/Person.vue'
import channel from '../views/Channel.vue'
import Error from '../views/Error.vue'
import Backer from '../views/Backer.vue'
import Fake from '../views/Fake.vue'
Vue.use(VueRouter)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/msmall/:nav_sex',
    
    component: Msmall,
    props:true
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/product/:sid/:sex',
    component:Product,
    props:true
  },
  {
    path:'/person',
    component:Person,
  },
  {
    path:'/channel',
    component:channel,
  },
  {
    path:'/backer',
    component:Backer,
  },
  {
    path:'/fake',
    component:Fake,
  },
  
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path:'/*',
    component:Error,
  }
]

const router = new VueRouter({
  mode: 'history',
  routes
})

export default router
