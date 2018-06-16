var mysql = require('mysql');

var con = mysql.createConnection({
host: 'techsquad.website',
user: 'mayanuzs_ts',
password: 'd3f4ult0r',
database : 'mayanuzs_ts'
});

con.connect(function(err) {
if (err) throw err;
console.log("Connected!");
});
