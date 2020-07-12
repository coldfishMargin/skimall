<template>
    <div>
        <el-button class="clear_btn" type="danger" v-show="pays==true" @click="pays=false">取消付款</el-button>
        <pay class="pay" v-show="pays==true"/>
        <div class="body" @scroll.passive="getScroll($event)">
            <my-header></my-header>
            <div class="content">
                <div class="left_notice">
                    <div>
                
                    <ul>
                        <h1>全部功能</h1>
                        <li> <a href="javascript:;">我的购物车</a></li>
                        <li> <a href="javascript:;">已买到的宝贝</a></li>
                        <li> <a href="javascript:;">购买过的商铺</a></li>
                        <li> <a href="javascript:;">我的发票</a></li>
                        <li> <a href="javascript:;">我的收藏</a></li>
                        <li> <a href="javascript:;">我的优惠信息</a></li>
                        <li> <a href="javascript:;">我的积分</a></li>
                        <li> <a href="javascript:;">评价管理</a></li>
                        <li> <a href="javascript:;">退款维权</a></li>
                        <li> <a href="javascript:;">我的足迹</a></li>
                        <li> <a href="javascript:;">流量钱包</a></li>
                    </ul>
                    </div>
                </div>
                <div class="center_notice border">
                    <div class="user_title position-relative">
                        <div >
                            <ul  class="off_btn">
                                <li >编辑资料</li>
                                <li @click="off">退出登录</li>
                            </ul>

                        </div>
                        <img src="../assets/nan1.jpg" class="user_head" alt="">
                        <p class="user_name">用户名:{{uname}}</p>
                    </div>
                    <div class="management">
                        <el-tabs v-model="activeName">
                            <el-tab-pane label="购物车" name="cart">
                                <div class="cart_content" v-for="(item,index) of data" :key="index">
                                    <div class="content_body">
                                        <div>
                                            <span>添加时间</span>
                                            <div class="mt-5">{{item.time | showTime}}</div>
                                        </div>
                                        <div>
                                            <span>商品图片</span>
                                            <div><img :src="item.image" alt=""></div>
                                        </div>
                                        <div>
                                            <span>商品名称</span>
                                            <div><h6>{{item.title}}</h6></div>
                                        </div>
                                        <div>
                                            <span>商品单价</span>
                                            <div>${{item.smoney}}</div>
                                        </div>
                                        <div>
                                            <span>商品数量</span>
                                            <div>{{item.num}} 件</div>
                                        </div>
                                        <div>
                                            <span>商品结算</span>
                                            <div class="content_btn">
                                                <div>总价:${{item.num_smoney}}</div>
                                                <div>
                                                    <el-button size="small" @click="del(item.sid)" type="danger">删除</el-button>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div v-if="data.length !== 0" class="all_class">
                                    <span>共计{{all}}元</span>
                                    <a href="javascript:;" @click="pays=true">购买</a>
                                </div>
                                <div v-else>
                                    购物车还没有东西~
                                </div>
                            </el-tab-pane>
                                <el-tab-pane label="配送地址管理" name="second">
                                    无后台支持.随便写个地址凑合
                                </el-tab-pane>
                                <el-tab-pane label="待收货" name="third">
                                    <div class="cart_content" v-for="(item,index) of datas" :key="index">
                                    <div class="content_body">
                                        <div>
                                            <span>添加时间</span>
                                            <div class="mt-5">{{item.time | showTime}}</div>
                                        </div>
                                        <div>
                                            <span>商品图片</span>
                                            <div><img :src="item.image" alt=""></div>
                                        </div>
                                        <div>
                                            <span>商品名称</span>
                                            <div><h6>{{item.title}}</h6></div>
                                        </div>
                                        <div>
                                            <span>商品单价</span>
                                            <div>${{item.smoney}}</div>
                                        </div>
                                        <div>
                                            <span>商品数量</span>
                                            <div>{{item.num}} 件</div>
                                        </div>
                                        <div>
                                            <span>商品结算</span>
                                            <div class="content_btn">
                                                <div>总价:${{item.num_smoney}}</div>
                                                <div>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </el-tab-pane>
                                <el-tab-pane label="收藏的物品" name="fourth"></el-tab-pane>
                            </el-tabs>
                            
                    </div>
                    
                </div>
                <div class="right_notice">
                    <div class="date">
                        <div class="date_title">我的日历</div>
                        <div class="date_content">
                            <h3>{{time_date}}</h3>
                            <h4>{{time_day}}</h4>
                            <h5>{{time_year}}</h5>
                        </div>
                    </div>
                </div>
            </div>
            <my-bottom></my-bottom>
        </div>  
    </div>  
</template>
<script>
import pay from '../components/Pay.vue'
export default {
    components:{pay},
    data() {
      return {
        activeName: 'cart',
        uname:sessionStorage.getItem('uname'),
        upwd:sessionStorage.getItem('upwd'),
        // 获取购物车
        data:[],
        time_date:1,
        time_day:'',
        time_year:'',
        all:0,
        pays:false,
        // 获取待收货
        datas:[]
      };
    },
    methods: {
        
        
        // 注销跳转
        off(){
            sessionStorage.clear();
            this.$store.commit('islogin')
            this.$router.push('/')
        },
        // 获取购物车数据
        cart_data(){
            this.all = 0
            this.axios.post('/user_cart',`uname=${this.uname}&upwd=${this.upwd}`).then((res)=>{
            this.data = res.data;
            this.data.forEach(item=>{
                item.image = require('../assets/' + item.image)
                this.all+=item.num_smoney
            })
        });
        },
        // 待收货
        stater(){
            this.axios.get(`/state?uname=${this.uname}&upwd=${this.upwd}`).then(res=>{
                this.datas = res.data
                this.datas.forEach(item=>{
                    item.image = require('../assets/' + item.image)
                })
            })
        },
       getScroll(event){
       },
        // 删除购物车选中数据
       del(num){
           this.axios.get(`/cartdel?sid=${num}`).then((res)=>{
               this.cart_data()
           })
       },
    //    确认发货选中数据
       shop(num){
           console.log(num)
       },

    },
    mounted(){
        this.cart_data()
        this.stater()
        var time = new Date().getDate()
        var a = new Date().getDay()
        var year = new Date().getFullYear()
        var month = new Date().getMonth()+1
        this.time_date=time<10?'0'+time:time
        if(a==0 || a==1){
            this.time_day = a==0?'星期天':'星期一'
        } else if(a==2 || a==3){
            this.time_day = a==2?'星期二':'星期三'
        } else if(a==4 || a==5){
            this.time_day = a==4?'星期四':'星期五'
        } else {
            this.time_day = '星期六'
        }
        this.time_year = month<10?year+'.'+'0'+ month:year+'.'+ month

    },
    // 时间戳过滤器
    filters: {
        showTime(time){
            time = Number(time)
            var a = new Date(time)
            return a.toLocaleDateString().split('/').join('-')
        }
    }
};

</script>
<style scoped>
    .clear_btn{
        position:fixed;
        top: 70%;
        left: 50%;

        z-index: 10001;
        transform: translate(-40%,0);
    }
    .pay{
        position:fixed;
        width: 100%;
        height: 100%;
        z-index: 1000;
       
    }
    .all_class{
        margin-left: 60%;
        color: #FF7A01;
        display: flex;
        justify-content: space-around;
    }
    .all_class>span{
        font-size: 18px;
        display: inline-block;
        
    }
    .all_class>a{
        border-radius: 5px;
        line-height: 30px;
        text-align: center;
        display: inline-block;
        width: 80px;
        height: 30px;
        color: #F8FFFA;
        background-color: #FF7A01;
    }
/* 日历设置 */
    .date{
        margin: 10px auto;
        width: 95%;
        height: 200px;
        border-radius: 10px;
        border: 1px solid #CFE5D4;
        text-align: center;
    }
    .date_title{
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        line-height: 40px;
        height: 40px;
        background-color: #6EC884;
        color: #fff;

    }
    .date_content{
        height: 160px;

        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        border: 1px solid #CFE5D4;
        background-color: #F8FFFA;
        color: #6EC884;
    }
    .date_content>h3{
        font-size: 60px;
        
    }
    .date_content>h4{
        margin-top: 15px;
        font-size: 16px;
    }
    .date_content>h5{
        font-size: 16px;
    }
    /* 日历设置结束 */
    .body{
        height: 100%;
    }
    .content{
        min-height:600px;
        margin: 20px auto;
        width: 1250px;
        display: flex;
    }
    /* 左侧样式 */
    .left_notice{
        flex: 2;
        text-align: center;
        
    }
    .left_notice ul{
        padding-bottom: 100px;
    }
    .left_notice h1{
        font-size: 25px;
        margin: 15px 0px 30px 0px;
    }
    .left_notice li{
        margin-top: 15px;
        
        font-size: 15px;
    }
    .left_notice li a{color: black;}
    .left_notice li a:hover{color: #FF4401;}
    /* 左侧样式结束 */
    /* 中间用户信息开始 */
    .center_notice{
        border-radius: 10px;
        flex: 8;
        
    }
    .off_btn{
        position: absolute;
        right: 30px;
        top:20px;
    }
    .off_btn>li{
        margin-top: 25px;
        width: 100px;
        height: 30px;
        border-radius: 5px;
        text-align: center;
        line-height: 30px;
        font-size: 15px;
        color: #fff;
        background-color:rgba(110,200,132);
    }
    .off_btn>li:hover{
        border: 1px solid #6EC884;
        color: #6EC884;
        background-color:rgba(110,200,132, 0.1);
    }
    /* 个人信息模块 */
    .user_title{
        margin: 0 auto;
        width: 100%;
        height: 180px;
        background-color: #F5F8FA;
        border-radius: 10px;
    }
    .user_head{
        border-radius: 50%;
        border: 2px solid #E5E5E5;
        width: 120px;
        height: 120px;
        padding: 6px;
        margin: 10px 0px 0px 50%;
        transform: translate(-50%,0px );
    }
    .user_name{
        padding-top: 15px;
        
        text-align:center;
    }
    /* 购物车模块开始 */
    .cart_content{
       
        width: 95%;
        height: 150px;
        margin-bottom: 20px;
        border-bottom: 1px solid #E5E5E5;
    }
    .cart_content img{
        width: 100px;
        height: 100px;
    }
    .content_btn>div:first-child{font-weight: 600;}
    .content_btn>div:last-child{
        padding-left: 15px;
        padding-top: 15px;
    }
    .content_body{
        display: flex;
        text-align: center;
        margin-bottom: 15px;
        justify-content: space-around;
    }
    .content_body>div>div{
        margin-top: 15px;
    }
   
    
    /* 购物车模块结束 */
    /* 个人商品管理模块 */
    .management{
        width: 95%;
        margin: 40px auto;
    }
    .right_notice{
        flex: 3;
        margin-left: 15px;
        margin-right: -15px;
    }
</style>

