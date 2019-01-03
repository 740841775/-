const express = require('express');
const router = express.Router();
const async = require("async");

router.get("/", (req, res) => {
    // console.log(req.query);
    let m_state = req.query.m_state;
    let sql = `SELECT * FROM preview WHERE p_status=1`;
    conn.query(sql, (err, results) => {
        res.send(results);
    })
})

module.exports = router;