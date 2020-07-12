<template>
    <div>
        <!-- 头部导航开始 -->
        <my-header></my-header>
        <!-- 头部导航结束 -->
        <div class="ms_body">
            <h1>商店</h1>
            <div class="cell row no-gutters" >  
                <!-- 商品子组件开始 -->
                <shop-vue class="col-md-12 col-lg-9 row no-gutters" :nav_sex="nav_sex" :png="png">
                </shop-vue>
                <!-- 商品子组件结束 -->
                <div class="col-md-12 col-lg-3 classify">
                    <div>  
                        <h1>商品分类</h1>
                        <div>
                            <ul>
                                <li ><router-link to="/msmall/polar_shop_lady" :class="nav_sex == 'polar_shop_lady'? 'class_color' : ''">女士</router-link></li>
                                <li ><router-link to="/msmall/polar_shop_man" :class="nav_sex == 'polar_shop_man'? 'class_color' : ''">男士</router-link></li>
                                <li ><router-link to="/msmall/polar_shop_wear" :class="nav_sex == 'polar_shop_wear'? 'class_color' : ''">童装</router-link></li>
                                <!-- <li><a href="javascript:;" @click="skiing">滑雪</a></li>
                                <li><a href="javascript:;">其他</a></li> -->
                            </ul>
                        </div>
                        <h1>最新商品</h1>
                        <div class="d1" v-for="(item,index) of recommend" :key="index">
                            <div>
                                <img :src="item.image" alt="">                             
                            </div>
                            <div>
                                <h2>{{item.sname}}</h2>
                                <p>￥{{item.smoney}}</p>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bgcolor">
            <ul class="pagination disabled paging" >
				<li class="page-item">
					<a href="javascript:;" class="page-link" @click="png>1?png-=1:''">&lt;&lt;</a>
				</li>
				<li class="page-item " :class="(index+1) == png? 'active':''" v-for="(item,index) of 5" :key="index">
					<a href="javascript:;" class="page-link" @click="png=(index+1)">{{index+1}}</a>
				</li>
				<li class="page-item">
					<a href="javascript:;" class="page-link" @click="png+=1">&gt;&gt;</a>
				</li>
			</ul>
        </div>
        <!-- 底部导航开始 -->
        <my-bottom></my-bottom>
        <!-- 底部导航结束 -->
    </div>
</template>
<script>
import shopVue from '../components/Shop.vue'
export default {
    components:{
        shopVue
    },
    props:["nav_sex"],
    data(){
        return {
            arr:'',
            recommend:'',
            png:1,
        }
    },
    mounted(){
        this.axios.get('/recommend').then((res)=>{
            
            this.recommend = res.data
            this.recommend.forEach(item=>{
                item.image = require('../assets/'+ item.image)
            })
        })
    },
    watch:{
    },
        
    methods:{
        
    }
}

</script>
<style scoped>
    .bgcolor{background-color: #F5F5F5;}
    .paging{margin-left: 50%;transform: translateX(-38%);margin-bottom: 0;padding-bottom: 50px;padding-top: 30px;}

    .paging>li{
        margin-left: 3px;
    }
    .page-link:hover{
		background-color: transparent;
		border-color: #0aa1ed;
	}
    .page-link{
        border-radius: 5px;
    }
    .class_color{
        color: black !important;
    }
    /* 商品分类模块开始 */
    .d1{
        display: flex;
        margin-bottom: 15px;
    }
    .d1 h2{
        font-size: 15px;
        padding-top: 5px;
    }
    .d1 p{
        color: #99CC66;
        padding-top: 15px;
    }
    .d1>div:first-child{
        width: 30%;
    }
    .d1>div>img{
        width: 100%;   
    }
    .d1>div:last-child{
        padding-left: 15px;
    }
    .classify{
        padding-left: 30px;
        margin-bottom: 30px;
    }
    .classify>div{
        height: 100%;
        background-color: #fff;
    }
    .classify>div>h1{
        font-weight: 600;
        font-size: 1.2rem;
        margin-left: 20px;
        padding-top: 30px;
        padding-bottom: 25px;
        margin-right: 20px;
        border-bottom: 2px solid #E5E5E5;
    }
    .classify>div>div{
        margin-top: 30px;
        margin-left: 20px;
    }
    .classify>div>div>ul>li{
        margin-top: 30px;
    }
    .classify>div>div>ul>li>a{
        color: #909399;
        
        text-decoration: none;
        transition: all 0.3s;
    }
    .classify>div>div>ul>li>a:hover{
        color: black;
    }
    .cell{
        width: 85%;
        margin: 0 auto;
    }
    
     /* 中间商城主体布局结束 */
    /* 页面主体布局 */
    .ms_body{
        background-color: #F5F5F5;
    }
    .ms_body>h1{
        padding-top: 100px;
        text-align: center;
        font-size: 2rem;
        font-weight: 600;
        color: #444444;
        padding-bottom: 50px;

    }
</style>