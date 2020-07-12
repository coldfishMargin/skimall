<template>
    <div>
        <el-input-number size="small" v-model="num" @change="handleChange" :min="1" :max="10" label="购买数量"></el-input-number>
        <a class="a_btn" href="javascript:;" @click="show">加入购物车</a>
    </div>
</template>
<script>
export default {
    name:'cartnumber',
    props:['smoney','sname','image'],
    data(){
        return {
            num:1,
            data:[],
            uname:sessionStorage.getItem('uname'),
            upwd:sessionStorage.getItem('upwd'),

        }
    },
    methods: {
      handleChange(value) {
      },
      open() {
        this.$alert('请先进行登录以后在进行操作!', '提示', {
          confirmButtonText: '确定',
          callback: action => {
            this.$message({
              type: 'warning',
              message: `请先进行登录,谢谢!`
            });
          }
        });
      },
      msg(){
        this.$alert('商品添加成功!', '提示!', {
          confirmButtonText: '确定',
          });
      },
      show(){
        if(this.$store.state.userlogin == true){
            var time = Date.parse(new Date())
            var num_smoney = this.num * this.smoney
            var obj = {
              uname:this.uname,
              upwd:this.upwd,
              title:this.sname,
              image:this.image,
              smoney:this.smoney,
              num:this.num,
              time:time,
              num_smoney:num_smoney,
            }
            this.axios.post('/user_cart_data',this.qs.stringify(obj)).then(res=>{
            })
            this.msg()

        } else {
            this.open()
        }
      }
    }
}
</script>
<style scoped>
    div{
        
        margin-top: 30px;
        margin-bottom: 15px;
        display: flex;
        justify-content: center;
    }
    .a_btn{
        margin-top: 25px;
        margin-left: 20px;
        display: block;
        color: #fff;
        background-color:#99CC66;
        border: 1px solid #99CC66;
        border-radius: 5px;
        width: 120px;
        height: 40px;
        text-align: center;
        line-height: 40px;
    }
    .a_btn:hover{
        color: #99CC66;
        text-decoration: none;
        background-color:rgba(0, 0,0,0);
    }
</style>