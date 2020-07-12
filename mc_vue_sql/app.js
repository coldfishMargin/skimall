const express = require('express')
const server = express();
const cors = require('cors')
const mysql = require('mysql')
server.listen(3000)
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:'3306',
    user:'root',
    password:'',
    database:'polar',
});
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
    
}))

const bodyParser = require('body-parser');
server.use(bodyParser.urlencoded({
    express:false
}));

// 女士商品
server.get('/polar_shop_lady',(req,res)=>{
    var png = req.query.png
    var p = (png-1)*9
    p = Number(p)
    var sql = 'SELECT * FROM polar_shop_lady LIMIT ?,9'
    pool.query(sql,[p],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 后台管理删除女士数据
server.post('/polar_shop_lady_del',(req,res)=>{
    var sid = req.body.sid;
    var sname = req.body.sname;
    sid = Number(sid)
    var sql = "DELETE FROM polar_shop_lady WHERE sid=? and sname=?";
    pool.query(sql,[sid,sname],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows == 1){
            res.send('1')
        } else {
            res.send("0")
        }
    })
})
// 后台获取所有女士商品信息
server.get('/polar_shop_ladycs',(req,res)=>{
    
    var sql = 'SELECT * FROM polar_shop_lady'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 男士商品
server.get('/polar_shop_man',(req,res)=>{
    var png = req.query.png
    var p = (png-1)*9
    p = Number(p)
    
    var sql = 'SELECT * FROM polar_shop_man LIMIT ?,9'
    pool.query(sql,[p],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 后台管理删除男士数据
server.post('/polar_shop_man_del',(req,res)=>{
    var sid = req.body.sid;
    var sname = req.body.sname;
    sid = Number(sid)
    var sql = "DELETE FROM polar_shop_man WHERE sid=? and sname=?";
    pool.query(sql,[sid,sname],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows == 1){
            res.send('1')
        } else {
            res.send("0")
        }
    })
})
// 后台获取所有男士商品信息
server.get('/polar_shop_mancs',(req,res)=>{
    
    var sql = 'SELECT * FROM polar_shop_man'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
//儿童商品
server.get('/polar_shop_wear',(req,res)=>{
    var png = req.query.png
    var p = (png-1)*9
    p = Number(p)
    var sql = 'SELECT * FROM polar_shop_wear LIMIT ?,9'
    pool.query(sql,[p],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 后台管理删除儿童数据
server.post('/polar_shop_wear_del',(req,res)=>{
    var sid = req.body.sid;
    var sname = req.body.sname;
    sid = Number(sid)
    var sql = "DELETE FROM polar_shop_wear WHERE sid=? and sname=?";
    pool.query(sql,[sid,sname],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows == 1){
            res.send('1')
        } else {
            res.send("0")
        }
    })
})
// 后台获取所有儿童商品信息
server.get('/polar_shop_wearcs',(req,res)=>{
    
    var sql = 'SELECT * FROM polar_shop_wear'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
//推荐商品
server.get('/recommend',(req,res)=>{
    var sql = "SELECT * FROM polar_shop_lady_tj"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 注册页面姓名查重验证
server.get('/verify',(req,res)=>{
    var uname = req.query.uname
    var sql = 'SELECT * FROM polar_user WHERE uname = ?'
    pool.query(sql,uname,(err,result)=>{
        if(err) throw err;
        if(result.length == 0){
            res.send("1")
        } else {
            res.send('0')
        }
    })
})
// 注册
server.post('/register',function(req,res){
    var arr = req.body
    var sql = "INSERT INTO polar_user SET ?"
    pool.query(sql,arr,(err,result)=>{
        if(err) throw err;
        if(result.affectedRows == 1){
            res.send("1")
        } else {
            res.send('0')
        }
    })
})
// 获取所有用户数据
server.get('/user',(req,res)=>{
    var sql = 'SELECT * FROM polar_user'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 登录
server.get('/login',(req,res)=>{
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    var sql = "SELECT uname,upwd FROM polar_user WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(result.length == 0){
            res.send('0')
        } else {
            res.send('1')
        }
    })
})
//详情
server.get('/details',(req,res)=>{
    var sid = req.query.sex;
    var sex = req.query.sid;
    
    var sql = `SELECT * FROM ${sex} WHERE sid=?`
    pool.query(sql,[sid],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 根据用户写入个人购物车数据
server.post('/user_cart_data',(req,res)=>{
    var obj = req.body
    var sql = "INSERT INTO polar_shop_cart SET ?"
    pool.query(sql,obj,(err,res)=>{
        if(err) throw err;
    })
})
// 获取用户购物车数据
server.post('/user_cart',(req,res)=>{
    var uname = req.body.uname;
    var upwd = req.body.upwd;
    var sql = "SELECT * FROM polar_shop_cart WHERE uname=? AND upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
// 删除购物车指定商品
server.get('/cartdel',(req,res)=>{
    var sid = req.query.sid;
    var sql = "DELETE FROM polar_shop_cart WHERE sid=?"
    pool.query(sql,sid,(err,result)=>{
        if(err) throw err;
        res.send('1')
    })
})
// 购物车转入已购买
server.post('/goods',(req,res)=>{
    
    var datas = req.body

    var sql = 'INSERT INTO polar_shop_state SET ?'
    
    pool.query(sql,datas,(err,res)=>{
        if(err) throw err
    })
})
// 清空购物车
server.get('/delect',(req,res)=>{
    var uname = req.query.uname
    var upwd = req.query.upwd
    var sql = 'DELETE FROM polar_shop_cart WHERE uname=? AND upwd=?'
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})
//获取已购买数据
server.get('/state',(req,res)=>{
    var uname = req.query.uname
    var upwd = req.query.upwd
    var sql = "SELECT * FROM polar_shop_state WHERE uname=? AND upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})

