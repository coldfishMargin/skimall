<template>
        <div class="d1">
            <div class="d2 position-relative">
                <img class="w-100 h-100" src="../assets/weixin.png" alt="">
                <div class="w-100 h-100" @click="show"></div>
            </div>
            <div class="title">
                请选择支付方式
            </div>

            <div class="d3 position-relative">
                <img class="w-100 h-100" src="../assets/zhifubao.jpg" alt="">
                <div class="w-100 h-100" @click="show"></div>
            </div>
        </div>
</template>
<script>
export default {
    name:'pay',
    data(){
        return {
            uname:sessionStorage.getItem('uname'),
            upwd:sessionStorage.getItem('upwd'),
            data:[],
        }
    },
    methods:{
        show(){
            console.log(this.pays)
            var obj={};
            this.axios.post('/user_cart',`uname=${this.uname}&upwd=${this.upwd}`).then((res)=>{
            this.data = res.data;
            this.data.forEach(item=>{
                obj.image = item.image
                obj.num = item.num
                obj.num_smoney = item.num_smoney
                obj.smoney = item.smoney
                obj.time = item.time
                obj.uname = item.uname
                obj.upwd = item.upwd
                console.log(obj)
                this.axios.post('/goods',this.qs.stringify(obj)).then((res)=>{
                    console.log(res)
                })
                this.axios.get(`/delect?uname=${this.uname}&upwd=${this.upwd}`)
                this.$router.push('/fake')
                
            })
        });
        
        }
    }
}
</script>
<style scoped>
    .d1{
        background-color: rgba(0, 0, 0, 0.5);
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .d1 img{
        border-radius: 5px;
    }
    .d2{
        width: 350px;
        
    }
    .d3{
        width: 350px;
    }
    .d2>div{
        position: absolute;
        background-color: rgba(0, 0, 0,0.3);
        left: 0;
        top: 0;
        
        transition: all 0.5s;
    }
    .d2>div:hover{
        cursor: pointer;
        background-color: rgba(0, 0, 0,0);
    }
    .d3>div{
        position: absolute;
        background-color: rgba(0, 0, 0,0.3);
        left: 0;
        top: 0;
        transition: all 0.5s;
    }
    .d3>div:hover{
        cursor: pointer;
        background-color: rgba(0, 0, 0,0);
    }
    
    .title{
        text-align: center;
        width: 200px;
        color: #ffffff;
        font-size: 25px;
        margin-bottom: 350px;
    }
</style>
