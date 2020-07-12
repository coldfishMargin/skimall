<template>
    <div class="d1">
        <div class="d2" v-for="(item,index) of arr" :key="index">
            <div class="title_img">
                <router-link :to="`/product/${nav_sex}/${item.sid}`"><img :src="item.image" alt=""></router-link> 
            </div>
            <div class="title">
                <h3>{{item.sname}}</h3>
                <h4>${{item.smoney}}</h4>
            </div>
        </div> 
    </div>
</template>
<script>
export default {
    props:['nav_sex','png'],
    name: "shop",
    data(){
        return {
            data:[],
            arr:[],
            btns:1,
        }
    },
    watch:{
        nav_sex(){
            if(this.nav_sex == "polar_shop_man"){
                 this.manfz()
            } else if(this.nav_sex == "polar_shop_wear"){
                this.wearfz()
            } else if(this.nav_sex == "polar_shop_lady"){
                this.ladyfz()
                
            }  
        },
        png(){

            if(this.png >=1){
            
            this.axios.get('/'+this.nav_sex+'/?png='+this.png).then((result)=>{         
                this.arr = result.data
                this.arr.forEach(even=>{
                    even.image = require('../assets/' + even.image)
                });
            }) 
            
            }
        },

    },
    mounted(){
        
        if(this.nav_sex == "polar_shop_man"){
            this.manfz()
        } else if(this.nav_sex == "polar_shop_wear"){
            this.wearfz()
        } else if(this.nav_sex == "polar_shop_lady"){
            this.ladyfz()
        }    
    },
    
    methods:{
        ladyfz(){
            this.axios.get('/polar_shop_lady/?png=1').then((result)=>{    
            this.arr = result.data
            this.arr.forEach(even=>{
                even.image = require('../assets/' + even.image)
            });
        })
        },
        wearfz(){
            this.axios.get('/polar_shop_wear/?png=1').then((result)=>{
            this.arr = result.data
            this.arr.forEach(even=>{

                even.image = require('../assets/' + even.image)
            })
             
        })
        },
        manfz(){
            
            this.axios.get('/polar_shop_man/?png=1').then((result)=>{
            this.arr = result.data
            this.arr.forEach(even=>{
                
                even.image = require('../assets/' + even.image)
            })
            
        })
        },
    }
};
</script>
<style scoped>

.d1{width: 100%;
    display: flex;
    justify-content: space-around; 
    padding-left: 5px;
    padding-bottom: 15px;
    padding-right: 5px;
    border-radius: 5px;
}
    .d2{
        box-sizing: border-box;
        margin-top: 30px;
        width: 260px;
        height: 370px;     
    }
    .title_img{
        width: 100%;
        height: 75%;
        overflow: hidden;
        
    }
    .title_img img{
        width: 100%;
        height: 100%;
        transition: all 0.8s;
        
    }
    .title_img img:hover{
    transform: scale(1.2,1.2);
}
    .title{
        width: 100%;
        height: 22%;
        background-color:#ffffff;
    }
    .title>h3{
       text-align: center;
       box-sizing: border-box;
        padding-top: 6px;
        font-size: 23px;
    }
    .title>h4{
       text-align: center;
       box-sizing: border-box;
        color: #99cc66;
        font-size: 23px;
    }
    @media (min-width:758px) and (max-width:1500px){
        .d1{
            width: 100%;
            display: flex;
            justify-content: space-around !important;
        }
    }
    @media (max-width:650px) {
        .d1{
            width: 100%;
            display: flex;
            justify-content: center !important;
        }
    }
</style>