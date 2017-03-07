/**
 * Created by kornkritsupayanant on 2/14/2017 AD.
 */
var mysql = require('mysql');
var db = null;

module.exports = function(){
    if(!db){
        db = mysql.createPool({
            host     : 'localhost',
            user     : 'weifotha_root',
            password : 'd36u84bg',
            database : 'weifotha_casebased'
        });
    }
    return db;
};