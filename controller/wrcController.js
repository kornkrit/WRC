/**
 * Created by kornkritsupayanant on 2/15/2017 AD.
 */
var pool = require('../databases/databaseHelper.js');
var db = new pool();

module.exports = {
    findScoreFromOraId: function (oraSet, callback) {
        var result = new Array();
        var testObj = new Array();
        var queryStr = 'SELECT * FROM cases ';

        for(var i = 0; i < oraSet.length; i++){
            testObj.push(findWordCount(oraSet[i].ora_id));
            for(var j = 0; j < (testObj[i]).length; j++) {
            if (i == 0 && j ==0)
                queryStr += 'WHERE ora_id LIKE \'%' + (testObj[i])[j].word + '%\'';
            else
                queryStr += 'OR ora_id LIKE \'%' + (testObj[i])[j].word + '%\'';
            }
         }
        queryStr += ';';
        db.getConnection(function (err, conn) {
            conn.query(queryStr, function (err, rows) {
                var trainResult = new Array();
                //console.log(rows);
                if (!err && rows.length > 0){
                    for(var j = 0; j< rows.length; j++){
                        trainResult.push({"ID" : j,"obj" : findWordCount(rows[j].ora_id)});
                    }
                    for(var i = 0; i < testObj.length; i++){
                        for(var j = 0; j < trainResult.length; j++){
                            var score = findScore(testObj[i],trainResult[j].obj);
                            if(score > 0.5)
                            //console.log(JSON.stringify(oraSet[i].ora_id) + "," + JSON.stringify(rows[trainResult[j].ID]) + "," + Math.round(score * 100) / 100);
                            result.push({"Word" : rows[trainResult[j].ID], "score" : (Math.round(score * 100) / 100) });
                        }
                    }
                    return callback(null,result);
                } else if(rows.length == 0 ){
                    console.error("It is empty.");
                }else {
                    console.error('<--- Something went error --->');
                    console.error(err);
                    return callback(err,null);
                }
            });
            conn.release();
        });
    }
};

function print(str){
    console.log(str);
}

function findWordCount(word){
    var wordSet = word.split(" ");
    var result = new Array();
    wordSet.sort();
    var current = null;
    var count = 0;

    for (var i = 0; i < wordSet.length; i++) {
        if (wordSet[i] != current) {
            if (count > 0) {
                result.push({ "word" : current, "wordCount" : count});
            }
            current = wordSet[i];
            count = 1;
        } else {
            count++;
        }
    }
    if (count > 0) {
        result.push({ "word" : current, "wordCount" : count});
    }
    return result;
}


function findScore(testSet,trainSet){
 var resultObj = new Array();
    for(var i = 0; i < testSet.length; i++){
        var chk = 0;
        for(var j = 0; j < trainSet.length; j++){
            if(testSet[i].word.toLowerCase() == trainSet[j].word.toLowerCase()){
                resultObj.push({"word" : testSet[i].word, "testWordCount" : testSet[i].wordCount,"trainWordCount" : trainSet[j].wordCount});
                break;
            }
            else{
                chk++;
            }
            if(chk == trainSet.length){
                resultObj.push({"word" : testSet[i].word, "testWordCount" : testSet[i].wordCount,"trainWordCount" : 0});
                chk = 0;
            }

        }
    }

    var x = 0,y1 = 1, y2 = 1;
    for(var i = 0; i < resultObj.length; i++){
        x += (resultObj[i].testWordCount * resultObj[i].trainWordCount);
        y1 += (resultObj[i].testWordCount * resultObj[i].testWordCount);
        y2 += (resultObj[i].trainWordCount * resultObj[i].trainWordCount);
        //print(resultObj[i].word + ":" + resultObj[i].testWordCount + "*" + resultObj[i].trainWordCount + "," + resultObj[i].testWordCount + "*" + resultObj[i].testWordCount + "," + resultObj[i].trainWordCount +"*"+ resultObj[i].trainWordCount);
    }
    var result = x/(( Math.sqrt(y1) * Math.sqrt(y2)));
    return result;
}
