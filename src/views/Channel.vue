<template>
    <div>
        <my-header></my-header>
        <div class="bgcolor">
            <el-row class="row-bg" >
                <el-col :md={span:15,offset:2}  :sm="24">
                    <div>
                        <el-row >
                            <el-col :md={span:10,offset:1} :sm={span:10,offset:1} class="content">
                                <img src="../assets/Channel.jpg" alt="">
                                <div>
                                    <h1>在全球范围内制定全球服务战略</h1>
                                    <h2>积极发展以市场为导向的体系结构，以获取高质量的价值。凭借独特的核心竞争力，可靠地利用技术上合理的ROI。通过具有成本效益的功能全面提供对虚拟利基市场的访问。客观地部署经过全面测试的“即开即用”的思想，而不是市场定</h2>
                                </div>
                            </el-col>
                            <el-col :md={span:10,offset:1} :sm={span:10,offset:1} class="content">
                                <img src="../assets/Channel1.jpg" alt="">
                                <div>
                                    <h1>在全球范围内制定全球服务战略</h1>
                                    <h2>积极发展以市场为导向的体系结构，以获取高质量的价值。凭借独特的核心竞争力，可靠地利用技术上合理的ROI。通过具有成本效益的功能全面提供对虚拟利基市场的访问。客观地部署经过全面测试的“即开即用”的思想，而不是市场定</h2>
                                </div>
                            </el-col>
                            <el-col :md={span:10,offset:1} :sm={span:10,offset:1} class="content">
                                <img src="../assets/Channel2.jpg" alt="">
                                <div>
                                    <h1>在全球范围内制定全球服务战略</h1>
                                    <h2>积极发展以市场为导向的体系结构，以获取高质量的价值。凭借独特的核心竞争力，可靠地利用技术上合理的ROI。通过具有成本效益的功能全面提供对虚拟利基市场的访问。客观地部署经过全面测试的“即开即用”的思想，而不是市场定</h2>
                                </div>
                            </el-col>
                            <el-col :md={span:10,offset:1} :sm={span:10,offset:1} class="content">
                                <img src="../assets/Channel3.jpg" alt="">
                                <div>
                                    <h1>在全球范围内制定全球服务战略</h1>
                                    <h2>积极发展以市场为导向的体系结构，以获取高质量的价值。凭借独特的核心竞争力，可靠地利用技术上合理的ROI。通过具有成本效益的功能全面提供对虚拟利基市场的访问。客观地部署经过全面测试的“即开即用”的思想，而不是市场定</h2>
                                </div>
                            </el-col>
                            
                        </el-row>
                    </div>
                </el-col>
                <el-col :md="5" :sm="24">
                    <div class="notice">
                        <div>
                            <h1 class="">您好，世界！</h1>
                            <h2>周一，2019年9月30日</h2>
                            <h3>欢迎来到coldfishMargie演示站点。这是官方公告的第一篇文章。希望在这里您能够获得,美好且愉快的的购物体验,！</h3>
                            <h4></h4>
                            <h5>发表于：2019年9月30日</h5>
                        </div>
                        <div>
                            <h1>最近的帖子！</h1>
                            <h2></h2>
                            <div class="img_title">
                                <div>
                                    <img class="w-100 h-100" src="../assets/Channel1.jpg" alt="">
                                </div>
                                <div>
                                    <h5>适当的基准垂直</h5>
                                    <h6>积极发展以市场为导向的体系结构</h6>
                                </div>
                            </div>
                            <div class="img_title">
                                <div>
                                    <img class="w-100 h-100" src="../assets/Channel1.jpg" alt="">
                                </div>
                                <div>
                                    <h5>适当的基准垂直</h5>
                                    <h6>积极发展以市场为导向的体系结构</h6>
                                </div>
                            </div>
                            <div class="img_title">
                                <div>
                                    <img class="w-100 h-100" src="../assets/Channel1.jpg" alt="">
                                </div>
                                <div>
                                    <h5>适当的基准垂直</h5>
                                    <h6>积极发展以市场为导向的体系结构</h6>
                                </div>
                            </div>
                            <div class="img_title">
                                <div>
                                    <img class="w-100 h-100" src="../assets/Channel1.jpg" alt="">
                                </div>
                                <div>
                                    <h5>适当的基准垂直</h5>
                                    <h6>积极发展以市场为导向的体系结构</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </el-col>
            </el-row>



        </div>
    </div>
</template>

<style scoped>
    .bgcolor{
        width: 100%;
        height: 100%;
        padding-top: 100px;
        background-color: #F5F5F5;
    }
    .content{
        margin-top: 30px;
        background-color: #Fff;
    
    }
    .content img{
        width: 100%;
        height: 100%;

        
    }
    .content h1 {
        padding: 25px 0px 0px 15px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        font-size: 17px;
        font-weight: 600;
    }
    .content h2 {
        padding: 5px 0px 10px 15px;
        color: #999999;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        font-size: 15px;
    }
    .notice{
        margin-top: 15px;
        width: 100%;
        background-color: #Fff;
    }
    .notice div:first-child>h1{
        padding: 30px 0px 10px 25px;
        font-size: 18px;
        font-weight: 600;
    }
    .notice div:first-child>h2{
        padding: 10px 0px 10px 25px;
        font-size: 13px;
        color: #999999;
    }
    
    .notice div:first-child>h3{
        padding: 10px 25px 10px 25px;
        font: 13px small;
    }
    .notice div:first-child>h4{
        margin-left: 15px;
        margin-right: 15px;
        border-top: 1px solid #999999;
    }
    .notice div:first-child>h5{
        padding: 10px 0px 10px 25px;
        font-size: 13px;
        color: #999999;
    }
    .notice div:last-child>h1{
        padding: 30px 0px 10px 25px;
        font-size: 16px;
        font-weight: 600;
    }
    .notice div:last-child>h2{
        margin-left: 15px;
        margin-right: 15px;
        border-top: 1px solid #999999;
    }
    .img_title{
        display: flex;
        margin: 20px 8px 0px 8px;
    }
    .img_title>div:first-child{
        width: 50%;
        height: 100%;
        padding: 5px;
    }
    .img_title>div:last-child{width: 50%;}
    .img_title h5{
        font-size: 14px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .img_title h6{
        font-size: 10px;
        color: #999999;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
</style>