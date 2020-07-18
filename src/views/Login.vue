<template>
    
    <div>
        <!-- 头部组件 -->
        <my-header></my-header>
        

        <div class="bg_image">
            
            <div class="bg_color">
                <div class="login_text">
                    <ul>
                        <li class="display_position"><a class="statr_btn " href="javascript:;" @click="login1" >登录</a><span :class="titel_btn" class="sil_block" ></span></li>
                        <li><a class="statr_btn" href="javascript:;" @click="right">注册</a></li>
                    </ul>
                </div>
                <!-- 登录模块开始 -->
                <div class="login" v-if="login">
                    <ul>
                        <li><h1>用户名：</h1></li>
                        <li><h1>密码：</h1></li>
                    </ul>
                    <ul class="login_input">
                        <li><input type="text" v-model="login_uname" placeholder="请输入用户名" ></li>
                        <li><input type="password" v-model="register_upwd" placeholder="请输入密码"></li>
                    </ul>  
                   
                </div>
                <!-- 登录模块结束 -->
                <!-- 注册模块开始 -->
                <div class="right" v-else>
                    <ul>
                        <li>用户名：</li>
                        <li>密码：</li>
                        <li>邮箱：</li>
                        <li>手机号：</li>
                    </ul>
                    <ul>
                        <input type="text" v-model="username" placeholder="请输入用户名 2~6位的汉字" @blur="verify_name">
                        <input type="password" v-model="upwd" placeholder="请输入密码 长度为3~12位" @blur="verify_upwd">
                        <input type="text" v-model="email" placeholder="请输入邮箱" @blur="verify_email">
                        <input type="text" v-model="phone" placeholder="请输入手机号" @blur="verify_phone">
                    </ul>
                    
                </div>
                <!-- 注册模块结束 -->
                <!-- 登录注册按钮模块开始 -->
                <div class="login_btn" v-if="login">         
                    <el-button type="text" @click="loginbtn" class="open_class">登录</el-button>
                </div>
                <div class="login_btn" v-else>
                    <el-button type="text" @click="register" class="open_class">免费注册</el-button>
                </div> 
                <!-- 登录注册按钮模块结束 -->
                <div v-if="login"></div>
                <div class="inform" v-else>
                    <span v-text="name_msg" :class="name_msg_class"></span>
                    <span v-text="upwd_msg" :class="upwd_msg_class"></span>
                    <span v-text="email_msg" :class="email_msg_class"></span>
                    <span v-text="phone_msg" :class="phone_msg_class"></span>
                </div>
            </div>
        </div>
    </div>

</template>
<script>
export default {
    data(){
        return {
            // 切换登录注册模块样式变量
            login : true,
            titel_btn:{},
            // 登录模块变量
            login_uname:'',
            register_upwd:'',
            // 注册数据接收变量
            username:'',
            upwd:'',
            email:'',
            phone:'',
            // 注册输入框验证变量
            name_msg:'',
            upwd_msg:'',
            email_msg:'',
            phone_msg:'',
            // 注册提示款颜色样式变量
            name_msg_class:{},
            upwd_msg_class:{},
            email_msg_class:{},
            phone_msg_class:{},
            // 登录注册警示框
            button_msg:'',
            button_msg_top:'',
            button_msg_title:'',
        }
    },
    methods:{
        //失败提示
        open() {
        this.$alert(this.button_msg, this.button_msg_title, {
          confirmButtonText: '确定',
          callback: action => {
            
            this.$message({
              type: 'warning',
              message: this.button_msg_top
            });
          }
        });
        
      },
    //   成功提示跳转
        open_success() {
        this.$alert(this.button_msg, this.button_msg_title, {
          confirmButtonText: '确定',
          callback: action => {
            this.$router.push('/')
            this.$message({
              type: 'success',
              message: this.button_msg_top
            });
          }
        });
        
      },
        // 注册用户名验证
        verify_name(){
            var reg = /[\u4e00-\u9fa5]{2}/
            if(reg.test(this.username) && this.username.length <= 6){
            this.axios.get('/verify?uname='+this.username).then(result=>{
                if(result.data == 1){
                    this.name_msg="该用户名可用"
                    this.name_msg_class = {color_msg:false}
                }else{
                    this.name_msg="该用户名已注册不可用"
                    this.name_msg_class = {color_msg:true}
                }
            })
            } else {
                this.name_msg="请输入格式正确的用户名"
                this.name_msg_class = {color_msg:true}
            }
        },
        // 注册密码验证
        verify_upwd(){
            if(this.upwd.length >= 3 && this.upwd.length <=12){
                this.upwd_msg = "密码格式正确"
                this.upwd_msg_class = {color_msg:false}
            } else {
                this.upwd_msg = "密码格式错误请修正"
                this.upwd_msg_class = {color_msg:true}
            }
        },
        // 注册邮箱验证
        verify_email(){
            var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/
            if(reg.test(this.email)){
                this.email_msg = "邮箱验证正确"
                this.email_msg_class = {color_msg:false}
            } else {
                this.email_msg = "邮箱验证有误，请检查格式"
                this.email_msg_class = {color_msg:true}
            }
        },
        // 注册手机号验证
        verify_phone(){
            var reg = /^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/

            if(reg.test(this.phone) && this.phone !== ''){
                this.phone_msg = "手机号验证正确"
                this.phone_msg_class = {color_msg:false}
            } else {
                this.phone_msg = "手机号验证有误，请检查格式"
                this.phone_msg_class = {color_msg:true}
            }
        },
        // 登录切换
        login1(){
            this.titel_btn={            
                stopitem:true
            }
            this.login = true
        },  
        // 注册切换
        right(){
            this.titel_btn={
                gotoitem:true
            }
            this.login = false
        },
        
        // 用户登录
        loginbtn(){
            
            this.axios.get(`/login?uname=${this.login_uname}&upwd=${this.register_upwd}`).then((result)=>{
                if(result.data == 1){
                    var obj = {
                        uname:this.login_uname,
                        upwd:this.register_upwd
                    }
                    sessionStorage.setItem("uname",obj.uname)
                    sessionStorage.setItem('upwd',obj.upwd)
                    sessionStorage.setItem('userlogin',true)
                    this.button_msg = '登陆成功,点击确定返回首页!'
                    this.button_msg_title = '登录成功!'
                    this.button_msg_top = '登录成功!欢迎来到首页'
                    this.open_success()
                    
                } else {
                    this.button_msg = '用户账号或密码输入错误!'
                    this.button_msg_title = '登录失败!'
                    this.button_msg_top = '请重新输入账号密码进行登录'
                    this.open()
                    
                }
    
            })
        },
        //用户注册
        register(){
            if(this.name_msg == '该用户名可用' && this.upwd_msg == "密码格式正确" && this.email_msg == "邮箱验证正确" && this.phone_msg == "手机号验证正确"){
                this.axios.post('/register',`uname=${this.username}&upwd=${this.upwd}&email=${this.email}&phone=${this.phone}`).then(result=>{
                 if(result.data == 1){
                     this.button_msg = '注册成功,点击确定返回首页!'
                    this.button_msg_title = '注册成功!'
                    this.button_msg_top = '注册成功!请返回登录界面进行登录'
                    this.open_success()
                 }
              })
            } else {
                this.button_msg = '注册信息错误,请按照格式填写!!'
                this.button_msg_title = '注册失败!'
                this.button_msg_top = '请重新输入注册信息进行注册'
                this.open()
                
            }
        }
    }
}
</script>
<style scoped>
.open_class{
    width: 200px;
    height: 40px;
    display: block;
    margin: 20px auto;
    border-radius: 5px;
    background-color: #99cc66;
    
    color: #fff;
    font-weight: 600;
   
}
.login_btn>button:hover{
      background-color: rgba(0, 0, 0, 0.3);
    }
.color_red{color: red;}


.color_msg{
    color: red !important;
}
/* 注册框架 */
.right{
    width: 80%;
    margin: 0 auto;
    display: flex;
    position: relative;
    justify-content: center;
}
/* 注册页面布局 */
.right>ul:first-child{
    margin-right: -15px;
    margin-top: -16px;
    width: 30%;
    font-size: 16px;
    color: #fff;
 
    text-align: center;
}
.right>ul:last-child{
    width: 70%;
}
/* 注册输入框 */
.right>ul:last-child{
    margin-top: -2px;
}
.right>ul:last-child>input{
    margin-top: 40px;
    width: 250px;
    height: 37px;
	border-radius: 5px;
    outline: none;
    padding-left: 8px;
    border: none;
    margin-left: 10px;
}
.right>ul:first-child>li{
    margin-top:55px;
}
/* 注册验证返还信息 */
.inform>span{
    display: block;
    height: 15px;
    margin-top: 60px;
    color: green;
    font-size: 13px;
    font-weight: 600;

}
.inform{
    position: absolute;
    top: 91px;
    z-index: -1;
    left: 36%;
}
/* 活块 */
.display_position{position: relative;}
.sil_block{
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0%;
    top: 0px;
    z-index: -1;
    background-color:  #99cc66;
    border-radius: 5px;  
}
.gotoitem{
    animation: goitem 0.5s;
    animation-fill-mode: forwards;
}
.stopitem{
    animation: stopitem 0.5s;
    animation-fill-mode: forwards;
}

/* 登录注册按钮样式开始 */
.statr_btn{
    display: block;
    width: 100%;
    height: 30px;  
    margin: 0 auto;
    text-align: center;
    border-radius: 5px;
    line-height: 30px; 
    transition: all 0.3s;
    color: #fff;
    font-size: 13px;
    font-weight:600;
}

 .login_text a:hover{
    text-decoration: none;
    font-size: 15px ;
    border: 1px solid #99cc66;
    color: #fff;
    font-weight:600;

 }
/* 登录注册按钮样式结束 */
    .bg_color{
        background-color: rgba(31,48,71,0.1);
        border-radius: 15px;
        transform: translateY(-25px);
        
        height: 500px;
    }
    .bg_image{
        width: 100%;
        height: 700px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-image: url('../assets/login.jpg');
        background-repeat: no-repeat;
        background-size: cover;
    }
    /* 登录注册父标签 */
    .login_text{margin-top: 20px;}
    .login_text>ul{
        display: flex;
        justify-content: center;
    }
    .login_text>ul>li{
        width: 30%;
    }
    .bg_image>div{
        width: 500px; 
    }
   .login{
        position: relative;
        display: flex;
        justify-content: center;
   }
   /* 调整用户名字体位置 */
   .login>ul:first-child>li{
        padding-top: 50px;
   }
   /* 调整密码字体位置 */
   .login>ul:first-child>li:last-child{
        padding-top: 60px;
   }
   /* 调整字体大小颜色属性 */
   .login>ul:first-child h1{
        font-size: 16px;
	    color: #FFFFFF;
	    margin-right: 10px;
   }
   /* 调整输入框位置 */
   .login_input>li{
       padding-top: 46px;
   }
   /* 调整输入框样式 */
   .login_input>li>input{
    	width: 250px;
    	height: 37px;
	    border-radius: 5px;
    	outline: none;
    	padding-left: 8px;
    	border: none;
    	margin-left: 10px;
   }
   /* 用户登录输入提示 */
   
   @keyframes goitem {
       0%{left: 0%;}
       100%{left: 100%;}
   }
   @keyframes stopitem {
       0%{left: 100%;}
       100%{left: 0%;}
   }
</style>