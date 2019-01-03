const express = require('express');
const router = express.Router();
const async = require("async");

router.get("/", (req, res) => {
    console.log(req.query);
    let ctype = req.query.ctype;
    let pagenum = req.query.pagenum;
    let current = req.query.current;
    async.series({
        allcinema: function(cb) {
            let sql = `SELECT count(*) AS num FROM cinema WHERE c_status=1`;
            if (ctype) {
                sql += ` AND c_name LIKE "%${ctype}%"`;
            }
            conn.query(sql, (err, results) => {
                cb(null, results[0].num);
            })
        },
        pagecinema: function(cb) {
            let sql = `SELECT * FROM cinema WHERE c_status=1`;
            if (ctype) {
                sql += ` AND c_name LIKE "%${ctype}%"`;
            }
            sql += ` LIMIT ${(current-1)*pagenum},${pagenum}`;
            conn.query(sql, (err, results) => {
                cb(null, results);
            })
        }
    }, (err, data) => {
        res.send(data);
    })
})


router.get("/info", (req, res) => {
    // console.log(req.query);
    let c_name = req.query.c_name;
    let sql = `SELECT * FROM cinema WHERE c_name="${c_name}" AND c_status=1`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})


router.get("/movie", (req, res) => {
    let sql = `SELECT * FROM movies WHERE m_play LIKE "%1%" AND m_status=1 LIMIT 6`;
    conn.query(sql, (err, results) => {
        // console.log(err);
        res.send(results);
    })
})


router.get("/selfilm", (req, res) => {
    let m_name = req.query.m_name;
    let sql = `SELECT * FROM movies WHERE m_name = "${m_name}" AND m_status=1`;
    conn.query(sql, (err, results) => {
        console.log(err);
        res.send(results);
    })
})

module.exports = router;