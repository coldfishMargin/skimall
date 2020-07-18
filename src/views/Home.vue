<template>
  <div>
    <my-header></my-header>
    <!-- 轮播开始 -->
    
    <div id="banner">
      <div class="title_a title_b">
      <span>极度零点</span><br>
      <span class="content_text">我们致力于营造精简购物风!希望给您带来良好的购物体验</span>
      <br>
      <router-link to='/msmall/polar_shop_lady'>进入商城</router-link>
    </div>
      <img src="../assets/nav1.jpg" v-if="!nav" alt />
      <img src="../assets/nav2.png" v-else alt />
      
      <div class="nav_btn">
        <span @click="nav = true" :class="nav==true?'nav_btn_span':''" ></span>
        <span @click="nav = false" :class="nav==true?'':'nav_btn_span'" ></span>
      </div>
      
    </div>
    <!-- 轮播结束 -->
    <!-- 页面主体介绍模块开始 -->
    <div class="row no-gutters introduce">
      <div class="col-md-6 col-sm-12 h-100">
        <img src="../assets/introduce.jpg"  class="h-100 w-100">
      </div>
      <div class="introduce_text col-md-6 col-sm-12 clearfix">
        <div>
          <p>我们是谁</p>
          <span><p>Lorem ipsum dolor坐镇，奉献己任，圣埃塞莫德临时工和劳动大臣。Ut enim ad minim veniam，quis nostrud exercitation ullamco labalis Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem, nesciunt quia placeat eveniet accusamus quaerat!</p></span>
          <a href="javascript:;" class="open_a">查看详情</a>
        </div>
      </div>
     
    </div>
    <!-- 页面主体介绍模块结束 -->
    <!-- 女生商品模块开始 -->
    <div class="goods row no-gutters">
      <div class="row no-gutters col-md-8 col-sm-12">
        <div class="col-md-4 col-sm-12">
          <div class="woman_show">
            <img src="../assets/woman1.jpg" alt="">
            <p>滑雪大佛</p>
            <a href="javascript:;">￥429.00</a>
          </div>
        </div>
        <div class="col-md-4 col-sm-12">
          <div class="woman_show">
            <img src="../assets/woman2.jpg" alt="">
            <p>滑雪大佛</p>
            <a href="javascript:;">￥429.00</a>
          </div>
        </div>
        <div class="col-md-4 col-sm-12">
          <div class="woman_show">
            <img src="../assets/woman3.jpg" alt="">
            <p>滑雪大佛</p>
            <a href="javascript:;">￥429.00</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-12 "></div>
    </div>
    <!-- 女生商品模块结束 -->
    <!-- 男士商品模块开始 -->
    <div class="row no-gutters man">
      <div class="col-md-4 col-sm-12">
        <img src="../assets/nan.jpg" alt="">
        <div>男士商品</div>
      </div>
      <div class="col-md-4 col-sm-12 helmet">
        <img src="../assets/n1.png" alt="">
        <div></div>
      </div>
      <div class="col-md-4 col-sm-12 man_bottom">
        <div>
          <h1>滑雪</h1>
          <h2>冬季运动系列</h2>
          <a href="javascript:;">查看详情</a>
        </div>
      </div>
    </div>
    <!-- 男士商品模块结束 -->
    <!-- 商城宗旨模块开始 -->
    <div class="row no-gutters aim">
      <div class="col-sm-12 col-md-4">
        <div>
          <h1>我们的宗旨</h1>
          <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit. Est fugiat molestiae, porro consequuntur facere accusamus Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam deleniti nostrum quo quod, placeat officia quibusdam. !</h2>
          <a href="javascript:;" class="open_a">查看更多</a>
        </div>
      </div>
      <div class="col-sm-12 col-md-8 aim_right">     
      </div>
    </div>
    <!-- 商城宗旨模块结束 -->  
    <!-- 底部导航开始 -->
    <my-bottom></my-bottom>
    <!-- 底部导航结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      nav: true,
    };
  },
  mounted() {
    setInterval(() => {
      this.nav == true ? (this.nav = false) : (this.nav = true);
    }, 5000);
  }
};
</script>
<style scoped>
@media (min-width:777px){
  .title_a {
    width:25%;
    height:40%;
    position:absolute;
    z-index:1000;
    left:15%;
    top:20%;
    text-align: center;
  }
  .title_b>a{
    margin: 50px auto !important;
  }
}
@media (min-width:300px) and (max-width:776px)  {
  .title_b {
    width:50%;
    height:30%;
    position:absolute;
    z-index:1000;
    left:50%;
    top:60%;
    transform: translate(-45%,-150%);
    text-align: center;
    list-style: none;
  }
  .title_b>a{
    
    margin: 0px auto !important;
  }
  
}
/* 宗旨模块开始 */
.title_b>a{
    display: block;
    background-color: #99CC66;
    margin: 10px auto;
    width: 120px;
    height: 30px;
    line-height: 30px;
    color: #fff;
    font-size: 14px;
    border-radius: 5px;
    
  }
  .title_b>a:hover{
    background-color: rgba(0,0,0,0);
    border: 2px solid #99CC66;
    color:  #99CC66;
    font-weight: 600;
    
  }
  .title_b>span:first-child{
    color: #99CC66;
    font-weight: 600;
    font-size: 30px;
    
  }
  .content_text{
    font-size: 15px;
    color:#99CC66;
  }
.aim>div:first-child{
  background-color: #070B1E;
  
  height: 720px;
  display: flex;
  justify-content: center;
  align-items: center;

}
.aim>div:first-child>div{
  width: 80%;
  height: 60%;
  
}
.aim>div:first-child>div>h1{
  font-size: 2rem;
  margin-bottom: 30px;
  color: #99cc66;
}
.aim>div:first-child>div>h2{
  font-size: 1.2rem;
  margin-bottom: 50px;
  line-height: 140%;
  color: #99cc66;

}

.aim_right{
  height: 720px;
  width: 100%;
  background-image: url('../assets/bottom1.jpg');
  background-attachment: inherit;
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
/* 宗旨模块结束 */
/* 男士商品模块开始 */
.man_bottom{
  display: flex;
  justify-content: center;
  align-items: center;
}
.man_bottom>div{
  width: 60%;
  height: 250px;
}
.man_bottom>div>h1{
  font-size: 1.4rem;
  font-weight: 600;
  text-align: center;
  margin-bottom: 30px;
  margin-top: 30px;
}
.man_bottom>div>h2{
  font-size: 1.5rem;
  font-weight: 600;
  text-align: center;
}

.man_bottom>div>a{
  display: block;
  width: 60%;
  margin: 0 auto;
  margin-top: 30px;
  height: 40px;
  color: #fff;
  background-color: #000;
  border: 1px solid #000;
  border-radius: 5px;
  text-align: center;
  line-height: 40px;
  
}
.man_bottom>div>a:hover{
  text-decoration: none;
  color: #000;
  background-color: #fff;
}
.helmet{ background-color: #E5E5E5;}
.helmet>img{
  display: block;
  margin: 15% auto;
 
  width: 60%;
  
}
.man{position: relative;}
.man>div:first-child>div{
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
  font-size: 2.3rem;
  color: #fff;
  font-weight: 600;
}
.man>div:first-child>img{
  width: 100%;
  height: 100%;
}
/* 男士商品模块结束 */
/* 女士商品模块开始 */
.woman_show{
  padding-left: 30px;
  padding-right: 15px;
  height: 100%;
}

.woman_show>p{
  text-align: center;
  font-size: 1.2rem;
  margin-top: 25px;
  font-weight: 600;
}
.woman_show>a{
  display: block;
  margin-top: 25px;
 text-align: center;
  font-size: 1.2rem;
  color: #99cc66;
}
.woman_show>img{
  width: 100%;
  height: 70%;
}


.goods>div:first-child{
  margin-top: 100px;
}
.goods>div:last-child{
   background-image: url("../assets/goods.jpg");
    background-position: center center;
    background-repeat: no-repeat;
    background-attachment: inherit;
    background-size: cover;
    height: 600px;
  
}
/* 女士商品结束模块 */
/* 轮播图设置开始 */
#banner > img {
  width: 100%;
}
#banner {
  position: relative;
}
.nav_btn {
  display: flex;
  position: absolute;
  left: 50%;
  bottom: 20px;
  transform:translateX(-37px);
}
.nav_btn > span {
  display: block;
  width: 30px;
  height: 12px;
  border-radius: 5px;
  border: 1px solid #fff;
  margin-left: 15px;
  cursor: pointer;
}
.nav_btn_span {
  width: 30px;
  height: 12px;
  border-radius: 5px;
  background-color: #99cc66;
}
/* 轮播图结束 */
/* 介绍（introduce）开始 */
.introduce{
  color: #99CC66;
}

.introduce_text{
   background-color: #070B1E;
  display: flex;
  justify-content: center;
  align-items: center;
}
.introduce_text>div>p{
  font-weight: 700;
  font-size: 2.3rem;
  margin-bottom: 20px;
  margin-top: 15px;
 
}
.introduce_text>div{
  width: 70%;
  
}
.introduce_text>div>span>p{
  color: #B7C5CE;
  font-size: 1.2rem;
  line-height: 30px;
  margin-bottom: 40px;
}
.open_a{
  display: block;
  background-color:#99CC66;
  color: #fff;
  border: 1px solid #99CC66;
  border-radius: 5px;
  width: 158px;
  height: 45.6px;
  text-align: center;
  line-height: 45.6px;
}
.open_a:hover{
  color: #99CC66;
  text-decoration: none;
  background-color:rgba(0, 0,0, 0);
}
.open_a_g{
  display: block;
  background-color:#99CC66;
  color: #fff;
  border: 1px solid #99CC66;
  border-radius: 5px;
  width: 70%;
  height:250%;
  text-align: center;
  line-height: 250%;
}
.open_a_g:hover{
  color: #99CC66;
  text-decoration: none;
  background-color:rgba(0, 0,0, 0);
}

/* 介绍结束 */
</style>
