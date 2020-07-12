<template>
    <div >
        <!-- 页面头组件 -->
        <my-header></my-header>
        <!-- 头组件结束 -->
        <!-- 商品介绍开始 -->
        <div class=" bg-color">
        <div class="container">
        <div class="row no-gutters">
            <div class=" col-12 no-gutters top_leftnav top_left_nav">
                首页>男士>详情
            </div>
            <div class="col-md-12 col-12 row no-gutters product">
                <!-- 左侧介绍 -->
                <div class="col-sm-12 col-md-9 row no-gutters bg-white">
                    <div class="pro_img col-sm-12 col-md-6">
                        <img :src="product.image" alt="" class="w-100 h-100">
                    </div>
                    <div class="col-sm-12 col-md-6 title_text">
                        <div class="h3">{{product.sname}}</div>
                        <h6 class="h4">${{product.smoney}}</h6>
                        <p>{{product.details}}</p>
                        <cart-number :sname="product.sname" :smoney="product.smoney" :image="image"></cart-number>
                    </div>
                </div>
                <div class="col-md-1 bg-color col-sm-12 "></div>
                <!-- 右侧导航 -->
                <div class="col-sm-12 col-md-2 border yuan m_t">
                    <h6>产品类别</h6>
                    <div class="border"></div>
                    <ul class="right_list">
                        <li><router-link to="/msmall/polar_shop_lady">女士</router-link></li>
                        <li><router-link to="/msmall/polar_shop_man">男士</router-link></li>
                        <li><router-link to="/msmall/polar_shop_wear">童装</router-link></li>
                    </ul>
                </div>
            </div> 
        </div> 
        </div>
        </div>
        
        <div class="clo-12 bg-color  no_p_t"></div>
         <!-- 商品介绍结束 -->
        <!-- 相关推荐开始 -->
        <div>
            <div class="mt-5 mb-5 recommended">相关推荐</div>
            <div class=" row no-gutters com_imgs">
                <div class="col-md-3 col-sm-6" v-for="(item,index) of recommend" :key="index">
                    <img :src="item.image"   alt="">
                    <h1>{{item.sname}}</h1>
                    <h2>${{item.smoney}}</h2>
                </div>
                
            </div>
        </div>

        <!-- 相关推荐结束 -->
        <my-bottom></my-bottom>
    </div>
</template>
<script>
import cartNumber from '../components/Cartnumber.vue'
export default {
    props:["sid","sex"],
    
    data(){
        return {
            product:[],
            recommend:'',
            image:'',
        }
    },
    components:{
        cartNumber,
    },
    methods:{
        
    },
    mounted(){
        
        this.axios.get('/details/?sid=' + this.sid + '&sex=' + this.sex).then(res=>{
            this.product = res.data[0];
            this.image = this.product.image 
            this.product.image = require('../assets/'+res.data[0].image)
        });
        this.axios.get('/recommend').then((res)=>{
            this.recommend = res.data
            this.recommend.forEach(item=>{
                item.image = require('../assets/'+ item.image)
            })
        })
    }  
}
</script>
<style scoped>
    @media (max-width:769px ) {
        .m_t{
            margin-top: 20px;
        }
    }
    @media (min-width:400px) and (max-width:575px ) {
        .com_imgs>div{
            height: 550px !important;
        }
    }  

    .yuan{
        background-color: #ffffff;
        border-radius: 10px;
    }
    .bg-color{
        
        background-color: #F5F5F5;
      
    }
    
    /* 图片大小 */
    .pro_img{
        padding: 35px;
        max-height: 550px;
    }
    .title_text{
        padding-top: 8%;
        padding-right: 30px;
        text-align: center;

    }
    
    .title_text>h6{
        padding-top: 15px;
        padding-bottom: 15px;
        color: #99CC66;
        
    }
    /* 右侧导航样式 */
    .yuan>h6{
        font-size: 16px;
        font-weight: 600;
        padding-left: 25px;
        padding-top: 20px;
    }
    .yuan>div{
        width: 90%;
        margin: 0 auto;
    }
    .no_p_t{
        height: 100px;
    }
    /* 推荐模块 */
    .com_imgs{
        width: 85%;
        margin: 0 auto;
        
    }
    .com_imgs>div{
        padding:15px;
        height: 400px;
        text-align: center;
    }
    .com_imgs>div h1{
        font-size: 23px;
        margin-top: 15px;
    }
    .com_imgs>div h2{
        font-size: 20px;
        color: #99CC66;
        margin-top: 15px;
    }
    .com_imgs>div img{
        width: 90%;
        height: 68%;
        
        
    }
    /* 细节微调 */
    .top_left_nav{
        padding-top: 80px;
        padding-bottom: 50px;
    }
    .right_list{
        padding-left: 15px;
    }
    .right_list a{
        color: black;
        text-decoration: none;
    }
    .right_list li {
        padding-top: 17px;
        
    }
    .recommended{
        text-align: center;
        font: 30px 宋体;
        font-weight: 600;
    }
</style>

