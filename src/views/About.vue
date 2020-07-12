<template>
  <div>
    <!-- 网页头部组件 -->
    <my-header></my-header>
    <!-- 网页主体开始 -->

    <div class="row no-gutters">
      <!-- 关于详情文字开始 -->
      <div class="col-12">
        <div class="as_for">
        <h6>About</h6>
          <h1>关于</h1>
          <p>我们的作品从其简约性和重复造型的明显易用性中吸取力量。它们也可以组合使用，这为想象留下了很大的空间。</p>
          <p>法国制造最好的材料，LE GRAMME的物品是美学的完美礼物。它们是工业工艺的产物，它依靠人眼和手来确保机器精度。</p>
        </div>
      </div>
      <!-- 关于详情文字结束 -->
      <!-- 图文介绍开始 -->
      <div class="image_text col-12">
        <!-- 户外体验开始 -->
        <div class="outdoors row no-gutters">
          <div class="col-sm-12 col-md-5">
            <img src="../assets/goods.jpg" class="w-100 h-100" alt="">
          </div>
          <div class="col-sm-12 col-md-7 outdoors_text">
            <h1>户外体验</h1>
            <p>我们喜欢我们有历史的事物。他们变得越老，我们就越爱他们。我们相信创造有价值的东西是一个漫长而复杂的过程。那个过程中的每一门学科都是一位艺术家的作品，专注于他们的工艺。</p>
            <p>我们的每个部件都经过仔细的打磨，由德国普福尔茨海姆市的设计大师亲自画稿，作出佩戴者的配饰。我们保证将最好的献给你。</p>
          </div>
        </div>
        <!-- 户外体验结束 -->
        <!-- 设计理念开始 -->
        <div class="ldea row no-gutters">
          <div class="col-sm-12 col-md-5 outdoors_text">
           <h1>简约-设计理念</h1>
           <p>我们喜欢我们有历史的事物。他们变得越老，我们就越爱他们。我们相信创造有价值的东西是一个漫长而复杂的过程。那个过程中的每一门学科都是一位艺术家的作品，专注于他们的工艺。</p>
           <p>我们的每个部件都经过仔细的打磨，由德国普福尔茨海姆市的设计大师亲自画稿，作出佩戴者的配饰。我们保证将最好的献给你。</p>
          </div>
          <div class="col-sm-12 col-md-7">
            <img src="../assets/bottom1.jpg" width="100%" alt="">
          </div>
        </div>
        <!-- 设计理念结束 -->
        <!-- 公益事业开始 -->
        <div class="outdoors row no-gutters bottom_nan">
          <div class="col-sm-12 col-md-5">
            <img src="../assets/nan.jpg" class="w-100 h-100" alt="">
          </div>
          <div class="col-sm-12 col-md-7 outdoors_text">
            <h1>热爱公益</h1>
            <p>我们喜欢我们有历史的事物。他们变得越老，我们就越爱他们。我们相信创造有价值的东西是一个漫长而复杂的过程。那个过程中的每一门学科都是一位艺术家的作品，专注于他们的工艺。</p>
            <p>我们的每个部件都经过仔细的打磨，由德国普福尔茨海姆市的设计大师亲自画稿，作出佩戴者的配饰。我们保证将最好的献给你。</p>
          </div>
        </div>
        <!-- 公益事业结束 -->
      </div>
      <!-- 图文介绍结束 -->

    </div>

    <!-- 网页主体结束 -->

    <!-- 网页底部组件 -->
    <my-bottom></my-bottom>
  </div>
</template>
<style scoped>
/* 图文介绍开始 */
.image_text{
  background-color: #F5F5F5;
  display: flex;
  justify-content: center;
  flex-flow: row wrap;
}
.bottom_nan{padding-bottom: 60px;}
/* 户外体验模块 */
.outdoors{width: 95%;margin-top: 10%;}


.outdoors_text{ 
  padding: 10%;
}
.outdoors_text>h1{
  font-size: 1.8rem;
  font-weight: 500;
}
.outdoors_text>p{
  padding-top: 25px;
  font: 1.1rem 宋体;
}
.ldea{
   margin-top: 8%;
   width: 95%;
}
/* 文本详情开始 */
  .as_for{
    padding-top: 120px;
    width: 50%;
    margin-left: 10%;
    padding-bottom: 8%;
  }
  .as_for>h6{margin-left: 5px; color: #CCCCCC;}
  .as_for>h1{font-size: 1.8rem; font-weight: 900;padding-top: 5px;padding-bottom: 35px;}
  .as_for>p{color: #7696AD; font: 1.1rem 宋体; padding-bottom: 20px;}
</style>
