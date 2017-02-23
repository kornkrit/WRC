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

    /*wrc.findScoreFromOraId([{"ora_id": 'ORA-00350: log string of instance string (thread string) needs to be archived'}],function(req,res){

     //console.log("RESPONSE:" , JSON.parse(res).results[0]);
     });*/
    wrc.findScoreFromOraId([{"ora_id": 'ORA-00037: cannot switch to a session belonging to a different server group'}],function(req,res){});

    res.send(null);
});

router.post('/findByOraId', function(req, res){

    /*wrc.findScoreFromOraId([{"ora_id": 'ORA-00350: log string of instance string (thread string) needs to be archived'}],function(req,res){

     //console.log("RESPONSE:" , JSON.parse(res).results[0]);
     });*/
    /*
    wrc.findScoreFromOraId([{"ora_id": req.body.searchSet[0].searchKey}],function(req,response){
        res.send(response);
    });
    */

    var result = new Array();
    var str = "";
    var counter = 0;
        for (var i = 0; i < req.body.searchSet.length; i++) {
            wrc.findScoreFromOraId([{ora_id: req.body.searchSet[i].searchKey}], function (request, response) {
                result.push(response);

                if(counter == req.body.searchSet.length -1) {
                    console.log("Correct");
                    console.log(result);
                    res.send(result);
                }
                counter++;
            });


        }
});



module.exports = router;
