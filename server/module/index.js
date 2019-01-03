const express = require('express');
const router = express.Router();
const async = require("async");

// 主页电影请求
router.get("/", (req, res) => {
    async.series({
        hotmovie: function(cb) {
            let sql = 'SELECT * FROM movies WHERE m_play LIKE "%1%" AND m_status=1 ORDER BY LENGTH(m_ticket),m_ticket DESC LIMIT 8';
            conn.query(sql, (err, results) => {
                cb(null, results);
            })
        },
        willmovie: function(cb) {
            let sql = 'SELECT * FROM movies WHERE m_play LIKE "%2%" AND m_status=1 ORDER BY LENGTH(m_people),m_people DESC LIMIT 8';
            conn.query(sql, (err, results) => {
                cb(null, results);
            })
        }
    }, (err, data) => {
        res.send(data);
    })
})

// 预告片播放请求
router.get("/play", (req, res) => {
    console.log(req.query);
    let p_name = req.query.p_name;

    async.series({
        allpre: function(cb) {
            let sql = `SELECT * FROM preview WHERE p_status=1`;
            conn.query(sql, (err, results) => {
                cb(null, results);
            })
        },
        playpre: function(cb) {
            let sql = ` SELECT * FROM preview INNER JOIN movies ON m_name = p_name WHERE p_name="${p_name}" AND p_status=1`;
            conn.query(sql, (err, results) => {
                cb(null, results);
            })
        }
    }, (err, data) => {
        res.send(data);
    })
})

// 电影详情请求
router.get("/info", (req, res) => {
    // console.log(req.query);
    let m_name = req.query.m_name;
    let sql = `SELECT * FROM movies WHERE m_name="${m_name}" AND m_status=1`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})

// 电影详情页面其他电影请求
router.get("/otherfilms", (req, res) => {
    let m_name = req.query.m_name;
    let sql = `SELECT * FROM movies WHERE m_name != "${m_name}" AND m_status=1 LIMIT 6`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})

// 电影搜索请求
router.get("/search", (req, res) => {
    let sv = req.query.sv;
    let sql = `SELECT * FROM movies WHERE m_name LIKE "%${sv}%" AND m_status=1`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})


// 图集请求
router.get("/picture", (req, res) => {
    let sql = `SELECT * FROM picture WHERE t_status=1`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})




module.exports = router;