/**
 * Created by kornkritsupayanant on 2/15/2017 AD.
 */
var pool = require('../databases/databaseHelper.js');
var db = new pool();

module.exports = {
    findScoreFromOraId: function (ora_id, callback) {
        var result;
        db.getConnection(function (err, conn) {
            var queryStr = 'SELECT case_id,ora_id FROM cases WHERE ora_id LIKE \'%' + ora_id + '%\';';
            conn.query(queryStr, function (err, rows) {
                console.log("Connection string: ", queryStr);
                console.log("Result: ", JSON.stringify(rows));
                if (!err) {
                    //result = '{ "results" :'+ JSON.stringify(rows) + '}';
                    //for(var i = 0; i < rows.length; i++){
                    console.log("Before Function");
                    findScore("this is a cat this", "this is a dog");
                    //}
                    return callback(null,result);
                } else {
                    console.error('<--- Something went error --->');
                    console.error(err);
                    return callback(err,null);
                }
            });
            conn.release();
        });
    }
};


function findScore(tested, trained){
    console.log(tested + " and " + trained);

    var testSet = tested.split(" ");
    var trainSet = trained.split(" ");

    var testSetCounted = new Array();
    var trainSetCounted = new Array();

    testSet.sort();
    trainSet.sort();

    var current = null;
    var testSetCount = 0;
    for (var i = 0; i < testSet.length; i++) {
        if (testSet[i] != current) {
            if (testSetCount > 0) {
                //console.log(current + ' comes --> ' + testSetCount + ' times<br>');
                //testSetCounted.push( ' "word" : "' + current + '", "wordCount": ' + testSetCount);
                testSetCounted.push({"word":current,"wordCount":testSetCount});
            }
            current = testSet[i];
            testSetCount = 1;
        } else {
            testSetCount++;
        }
    }
    if (testSetCount > 0) {
        testSetCounted.push({"word":current,"wordCount":testSetCount});
    }

    console.log(testSetCounted);


    var currentTrain = null;
    var trainSetCount = 0;
    for (var i = 0; i < testSetCounted.length; i++) {
        console.log("-->" + testSetCounted[i].word);
        if (trainSet[i] != currentTrain) {
            if (trainSetCount > 0) {
                trainSetCounted.push({"word":current,"wordCount":trainSetCount});
            }
            currentTrain = JSON.stringify(testSetCounted)[i].word;
            trainSetCount = 1;
        } else {
            trainSetCount++;
        }
    }
    if (trainSetCount > 0) {
        trainSetCounted.push({"word":current,"wordCount":trainSetCount});
    }

    console.log(JSON.stringify(trainSetCounted));
}

