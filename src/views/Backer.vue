<template>
  <div class="body">
    <div class="header">
      <span>零点服装后台</span>
    </div>
    <div style="display:flex;">
    <div class="navigation">
        <el-row class="tac" >
            <el-menu
              default-active="1"
              class="el-menu-vertical-demo"
              background-color="#545c64"
              text-color="#fff"
              active-text-color="#ffd04b"
            >
            <el-menu-item index="1" @click="open_user">
                  <i class="el-icon-user-solid"></i>
                  <span slot="title" >用户管理模块</span>
              </el-menu-item>
              <el-menu-item index="2" @click="open_lady">
                  <i class="el-icon-shopping-bag-2"></i>
                  <span slot="title" >女士商品模块</span>
              </el-menu-item>
              <el-menu-item index="3" @click="open_man">
                  <i class="el-icon-s-check"></i>
                  <span slot="title" >男士商品模块</span>
              </el-menu-item>
              <el-menu-item index="4" @click="open_wear">
                  <i class="el-icon-reading"></i>
                  <span slot="title" >童装商品模块</span>
              </el-menu-item>
              <!-- <el-menu-item index="5">
                  <i class="el-icon-s-shop"></i>
                  <span slot="title" >精品推荐模块</span>
              </el-menu-item> -->
              <el-menu-item index="6" @click="open_cart">
                  <i class="el-icon-shopping-cart-2"></i>
                  <span slot="title" >购物车模块</span>
              </el-menu-item>
              <el-menu-item index="7" @click="open_channel">
                  <i class="el-icon-menu"></i>
                  <span slot="title" >新闻模块</span>
              </el-menu-item>
            </el-menu>
        </el-row>
    </div>
    <backer-user v-if="target == 'user'" style="flex:1"></backer-user>
    <backer-lady v-else-if="target == 'lady'" style="flex:1"></backer-lady>
    <backer-wear v-else-if="target == 'wear'" style="flex:1"></backer-wear>
    <backer-man v-else-if="target == 'man'" style="flex:1"></backer-man>
    <backer-cart v-else-if="target == 'cart'" style="flex:1"></backer-cart>
    <backer-channel v-else style="flex:1"></backer-channel>
    </div>
  </div>
</template>
<style scoped>
    .body{
      background-color:#F5F5F5;
    }
    .navigation{
        width: 200px;
        background-color: #545C64;
    }
    .header{
      width: 100%;
      height: 100px;
      background-image: linear-gradient(to top,#545C64,black);
    
    }
    .header>span{
      margin-left: 50px;
      font-size: 50px;
      color: #99CC66;
    }
</style>
<script>
import backerUser from '../components/Backer_user.vue'
import backerLady from '../components/Backer_lady.vue'
import backerMan from '../components/Backer_man.vue'
import backerWear from '../components/Backer_wear.vue'
import backerCart from '../components/Backer_cart.vue'
import backerChannel from '../components/Backer_channel.vue'
  export default {
    data(){
        return {
          target:'user'
        }
    },
    components:{
      backerUser,
      backerLady,
      backerMan,
      backerWear,
      backerCart,
      backerChannel
    },
    methods:{
        open_user(){
            this.target = 'user'
        },
        open_lady(){
            this.target = 'lady'
        },
        open_man(){
            this.target = 'man'
        },
        open_wear(){
            this.target = 'wear'
        },
        open_cart(){
            this.target = 'cart'
        },
        open_channel(){
            this.target = 'channel'
        },
        open_jp(){
            this.target = 'jp'
        },
    }
      
  }
</script>