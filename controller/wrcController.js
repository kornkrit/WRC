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
                    for(var i = 0; i < rows.length; i++){

                    }
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