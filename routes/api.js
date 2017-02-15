/**
 * Created by kornkritsupayanant on 2/14/2017 AD.
 */
var express = require('express');
var router = express.Router();
var wrc = require('../controller/wrcController');

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});

router.get('/GetALLCases',function(req, res){
    res.send(null);
});

router.get('/findByOraId', function(req, res){

    wrc.findScoreFromOraId('ora-28836',function(req,res){
        //console.log("RESPONSE:" , JSON.parse(res).results[0]);
    });

    res.send(null);
});

module.exports = router;
