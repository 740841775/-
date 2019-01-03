//各个模块的引入
const express = require("express");
const mysql = require("mysql");
const bodyParser = require("body-parser");

//创建服务器
const app = express();

// 允许跨域
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Origin", "http://localhost:8080"); // pc端需要

    res.header("Access-Control-Allow-Credentials", true); // pc端需要
    res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    next();
});


//启用中间件(post数据处理)
app.use(bodyParser.urlencoded({
    extended: true
}));

//数据库连接
global.conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    port: 3306,
    database: "maple_movies"
});
conn.connect();

//路由配置
app.use('/', require('./module/index'));
app.use('/films', require('./module/films'));
app.use('/cinema', require('./module/cinema'));
app.use('/list', require('./module/list'));
app.use('/news', require('./module/news'));

//端口监听
app.listen(8081, function() {
    console.log("服务器地址：http://localhost:8081")
})