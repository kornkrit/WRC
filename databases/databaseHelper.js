/**
 * Created by kornkritsupayanant on 2/14/2017 AD.
 */
var mysql = require('mysql');
var db = null;

module.exports = function(){
    if(!db){
        db = mysql.createPool({
            host     : 'localhost',
            user     : 'root',
            password : '1234',
            database : 'casebased'
        });
    }
    return db;
};