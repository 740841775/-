const express = require('express');
const router = express.Router();
const async = require("async");

// router.get("/", (req, res) => {
//     // console.log(req.query);
//     let m_state = req.query.m_state ? req.query.m_state : 1;
//     let m_type = req.query.m_type;
//     let sql = `SELECT * FROM movies WHERE m_play LIKE "%${m_state}%" AND m_status=1`;
//     if (m_type) {
//         sql += ` AND m_type LIKE "%${m_type}%"`;
//     }
//     conn.query(sql, (err, results) => {
//         res.send(results);
//     })
// })

router.get("/", (req, res) => {
    // console.log(req.query);
    let m_state = req.query.m_state ? req.query.m_state : 1;
    let m_type = req.query.m_type;
    let pagenum = req.query.pagenum;
    let current = req.query.current;
    async.series({
        // 查询到的电影总数
        allmovie: function(cb) {
            let sql = `SELECT count(*) AS num FROM movies WHERE m_play LIKE "%${m_state}%" AND m_status=1`;
            if (m_type) {
                sql += ` AND m_type LIKE "%${m_type}%"`;
            }
            conn.query(sql, (err, results) => {
                cb(null, results[0].num);
            })
        },
        pagemovie: function(cb) {
            let sql = `SELECT * FROM movies WHERE m_play LIKE "%${m_state}%" AND m_status=1`;
            if (m_type) {
                sql += ` AND m_type LIKE "%${m_type}%"`;
            }
            sql += ` LIMIT ${(current-1)*pagenum},${pagenum}`
            conn.query(sql, (err, results) => {
                console.log(err);
                cb(null, results);
            })
        }

    }, (err, data) => {
        res.send(data);
    })
})

module.exports = router;