import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
      uname:sessionStorage.getItem('uname'),
      upwd:sessionStorage.getItem('upwd'),
      userlogin:sessionStorage.getItem('userlogin')?true:false
  },
  mutations: {
    
    islogin(){
      this.state.userlogin = sessionStorage.getItem('userlogin')?true:false
    }
  },
  actions: {

  },
  modules: {
  }
})
