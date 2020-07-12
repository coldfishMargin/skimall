<template>
  <div>
    <div>
      <el-table :data="data" style="width: 100%">
        <el-table-column prop="uid" label="uid" width="100"></el-table-column>
        <el-table-column label="注册日期" width="180">2016-05-02</el-table-column>
        <el-table-column prop="uname" label="姓名" width="180"></el-table-column>
        <el-table-column prop="phone" label="手机号"></el-table-column>
        <el-table-column prop="email" label="邮箱"></el-table-column>
        <el-table-column prop="user_name" label="真实姓名"></el-table-column>
        <el-table-column label="操作">
            <el-button type="primary" icon="el-icon-delete"></el-button>
        </el-table-column>
      </el-table>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    
  },
  data() {
    return {
    //   tableData: [
    //     {
    //       date: "2016-05-02",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-04",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-03",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //     {
    //       date: "2016-05-01",
    //       name: "王小虎",
    //       address: "上海市普陀区金沙江路 1518 弄"
    //     },
    //   ]
    data:[]
    };


  },
  mounted(){
      this.axios.get('/user').then(res=>{
          console.log(res.data)
          this.data = res.data
      })
  }
};
</script>
<style scoped>
</style>