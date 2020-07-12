<template>
    <div class="bottom_nav">
        <div class="d1">
        <div class="bottom_ul">
            <div>
                <ul>
                    <h1>关于公司</h1>
                    <li>关于我们</li>
                    <li>公司新闻</li>
                    <li>加入我们</li>
                </ul>
                <ul>
                    <h1>服务支持</h1>
                    <li>售后服务</li>
                    <li>维修门店</li>
                    <li>零售门店</li>
                </ul>
                <ul>
                    <h1>产品中心</h1>
                    <li>热点资讯</li>
                    <li>预约购买</li>
                    <li>服务咨询</li>
                </ul>
                <ul>
                    <h1>自助服务</h1>
                    <li>热点资讯</li>
                    <li>预约购买</li>
                    <li>服务资讯</li>
                </ul>
                <ul>
                    <h1>联系方式</h1>
                    <li>1</li>
                    <li>1</li>
                    <li>1</li>
                </ul>
            </div>
        </div>
        <div id="d1">© Copyright 项目</div>
        </div>
    </div>
</template>
<style scoped>
    .d1{width: 100%;height: 100%; background-color: rgba(246,255,254,0.2);}
    .bottom_nav{
        width: 100%;
        height: 100%;
        color: #070B1E;
        
        background-image: url(../assets/xueshan.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        
    }
    .bottom_ul>div{
        display: flex;
        justify-content: space-between;
        flex-flow: row wrap;
        font-family: 宋体;
        margin-bottom: 35px;
    }
    .bottom_ul>div>ul>h1{
        font-size: 1.2rem;
        font-weight: 600;
        text-align: center;
        
        margin-bottom: 15px;
        
       
    }
    .bottom_ul>div>ul>li{
        margin-bottom: 15px;
        text-align: center;
        
    }
    .bottom_ul{
        
        margin: 0 auto;
        width: 80%;
        padding-top: 60px;
        border-bottom: 1px solid #000;
    }
    #d1{
        
         width: 80%;
         margin: 0 auto;
         padding-top: 20px;
         padding-bottom: 30px;
    }
</style>
<script>
export default {
    
}
</script>