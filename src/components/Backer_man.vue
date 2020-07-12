<template>
  <div>
    <h1 class="title">商品列表</h1>
    <div class="subject">
      <div v-for="(item,index) of arr" :key="index">
        <div class="image">
          <img :src="item.image" alt />
        </div>
        <div class="content">
            <p>{{item.sname}}</p>
            <span>${{item.smoney}}</span>
        </div>
        <div class="btn">
          <el-button type="primary" @click="dialogFormVisible = true" plain>编辑</el-button>
          <el-button type="danger"  @click="open(item.sid,item.sname)" plain>删除</el-button>
          
        </div>
      </div>
      
      
    </div>
    <!-- 
    <el-button type="text" @click="dialogFormVisible = true">打开嵌套表单的 Dialog</el-button>
    <el-dialog title="收货地址" :visible.sync="dialogFormVisible">
      <el-form :model="form">
        <el-form-item label="活动名称" :label-width="formLabelWidth">
          <el-input v-model="form.name" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="活动区域" :label-width="formLabelWidth">
          <el-select v-model="form.region" placeholder="请选择活动区域">
            <el-option label="区域一" value="shanghai"></el-option>
            <el-option label="区域二" value="beijing"></el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
      </div>
    </el-dialog> -->
  </div>
</template>
<style scoped>
.title {
  text-align: center;
  font-size: 20px;
  padding: 15px 0px 20px 30px;
  border-bottom: 1px solid;
}
.subject {
  margin: 30px auto;
  width: 1200px;
  display: flex;
  flex-flow: row wrap;
}
.subject > div {
  padding: 6px;
  box-shadow: 0px 0px 1px 2px #e5e5e5;
  width: 17%;
  height: 300px;
  margin: 30px 0px 0px 30px;
}
.image {
  width: 100%;
  height: 70%;
}
.image > img {
  width: 100%;
  height: 100%;
}
.btn {
  width: 100%;
  display: flex;
  justify-content: space-around;
}
.content{
    display: block;
    display: flex;
    justify-content: space-around;
    box-sizing: border-box;
    padding: 10px 0px -10px 0px;
}
</style>
<script>
export default {
  name: "backerman",
  data() {
    return {
      dialogTableVisible: false,
      dialogFormVisible: false,
      formLabelWidth: "120px",
      arr:[]
    };
  },
  mounted() {
    this.ading()
  },
  methods: {
    open(sid,sname) {
      this.$confirm("此操作将永久删除该文件, 是否继续?" + sname + sid, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(() => {
          this.show(sid,sname)
          this.$message({
            type: "success",
            message: "删除成功!"
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
    },
    ading(){
        this.axios.get("/polar_shop_mancs").then(res => {
        this.arr = res.data
        this.arr.forEach(item=>{
          item.image = require('../assets/'+item.image)
      })
    });
    },
    show(sid,sname){
        this.axios.post('/polar_shop_man_del',`sid=${sid}&sname=${sname}`).then((res)=>{
            this.ading()
        })
    }
  }
};
</script>