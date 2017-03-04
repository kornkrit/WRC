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

router.post('/findByOraId', function(req, res){
    var result = new Array();
    var counter = 0;

    try{
        if(req.body.searchSet.length > 0) {
            for (var i = 0; i < req.body.searchSet.length; i++) {
                wrc.findScoreFromOraId([{ora_id: req.body.searchSet[i].searchKey}], function (request, response) {
                    result.push(response);
                    if (counter == req.body.searchSet.length - 1) {
                        res.send({"RootWord" : result});
                    }
                    counter++;
                });
            }
        }else{
            res.send({"status" : 200, "error" : 'Your request is null or incorrect'});
        }
    }catch(ex){
        res.send({"status" : 500, "error" : 'Your request body is not correct'});
    }
});
module.exports = router;
