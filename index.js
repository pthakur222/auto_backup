const MongoClient = require('mongodb').MongoClient;
var download = require('download-file')
var request = require("request");
var message = "";
var email 	= require("emailjs");

var server 	= email.server.connect({
   user:    "info@priyankathakur.in",
   password: "pS@myal851",
   host:    "mail.priyankathakur.in",
   port: 25,
   ssl:     false,
   timeout: 30000
});

MongoClient.connect('mongodb://localhost/autobackup', function(err, db) {
if(err){
  console.log(err);
}
  var dbo = db.db("autobackup");
  dbo.collection("app_details").find({}).toArray(function(err, result) {
     if (err) throw err;
     result.forEach(function(data){

       var options = {
           directory: "backup",
           filename: data.domain_name+".zip"
       }

       var option1 = {
           directory: "backup_db",
           filename: data.domain_name+".sql"
       }
       var zipCreate = function(){
                     request.get("http://"+data.domain_name+"/zip.php",function(error,response,body){
                     if(error){
                           console.log(error);
                     }else{
                         message = "http://"+data.domain_name+"/archive.zip";
                         console.log(message);
                       download("http://"+data.domain_name+"/archive.zip", options, function(err){
                           if (err) throw err
                           console.log("zip done");
                       })
                   }
          });
        }

        var sqlCreate = function(){
          if(data.database == "yes"){
          request.get("http://"+data.domain_name+"/dbConnect.php",function(error,response,body){
                     if(error){
                           console.log(error);
                     }else{
                       message = message + "http://"+data.domain_name+"/db_backup.sql";
                       console.log(message);
                       download("http://"+data.domain_name+"/db_backup.sql", option1, function(err){
                           if (err) throw err
                           console.log("sql done");
                       })
                   }
          });
        }
      }

       async function getFiles() {
         await zipCreate();
         await sqlCreate();
          console.log("Message"+message);
       }

     // // send the message and get a callback with an error or details of the message that was sent
     // server.send({
     //    text:    " works"+message+"",
     //    from:    "Priyanka Thakur <info@priyankathakur.in>",
     //    to:      "Mayank <thecorporator@gmail.com>, Priyanka <priyanka.thakur153@gmail.com>",
     //    subject: "testing emailjs"
     // }, function(err, message) { console.log(err || message); });

     });

     db.close();
});
});
