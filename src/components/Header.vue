<template>
  <div>
    <div class="navbar navbar-expand-lg row no-gutters top_nav nav_d">
      <!-- 1.任何情况都显示的第一个a标签 -->
      <a href="javascript:;" class="navbar-brand col-2">
        <img src="../assets/log.png" class="w-100 w1">
      </a>
      <!-- 2.大屏幕消失，小屏幕出现的按钮，而且还是激活折叠的事件 -->
      <button class="navbar-toggler" data-toggle="collapse" data-target="#d1">
        <span><img src="../assets/xia.png" width="25px"></span>
      </button>
      <div id="d1" class="collapse navbar-collapse">
        <ul class="navbar-nav">
          <li>
            <router-link to="/" class="nav-link">首页</router-link>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li>
            <router-link class="nav-link" to="/msmall/polar_shop_lady">女士</router-link>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li>
            <router-link class="nav-link" to="/msmall/polar_shop_man">男士</router-link>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li>
            <router-link to="/channel">新闻中心</router-link>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li>
            <router-link class="nav-link" to="/about">关于我们</router-link>
          </li>
        </ul>
        <ul >
          <li class="use">
             <router-link v-if="$store.state.userlogin == false" to="/login">登录 / 注册</router-link>
             <router-link v-else to="/person">个人空间</router-link>
          </li>
         
        </ul>
      </div>
    </div>
    
  </div>
</template>
<script>
export default {
  data(){
    return {
      
    }
  },
  methods:{
    
  },
  mounted(){  
    this.$store.commit('islogin')
  }

  
}
</script>
<style scoped>
@media (min-width:992px) {
  #d1{
    display: flex;
    justify-content: space-around;
  
  }
}
.use{
  padding-top: 15px;
}
.w1{min-width: 130px;}
.top_nav{
  margin-left: 50px;
  margin-right: 50px;
}
.nav_d{
    padding-left: 40px;
}
#d1{
   text-align: center;
}

#d1>ul>li>a{
  
    display: block;
    width: 100%;
    font: 15px 宋体;
    color: #6B6B6F;
    text-decoration: none;
}
#d1>ul>li>a:hover{
  color: royalblue;
}

</style>