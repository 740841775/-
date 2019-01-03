const express = require('express');
const router = express.Router();
const async = require("async");

router.get("/", (req, res) => {
    console.log(req.query);
    let m_state = req.query.m_state ? req.query.m_state : 2;
    let sql = `SELECT * FROM movies WHERE m_play LIKE "%${m_state}%" AND m_status=1 LIMIT 10`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})

module.exports = router;