const MongoClient = require('mongodb').MongoClient;
var download = require('download-file')
var request=require("request");

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
       request.get("http://"+data.domain_name+"/zip.php",function(error,response,body){
                  if(error){
                        console.log(error);
                  }else{

                    download("http://"+data.domain_name+"/archive.zip", options, function(err){
                        if (err) throw err
                        console.log("zip done");
                    })
                }
       });
       if(data.database == "yes"){
       request.get("http://"+data.domain_name+"/dbConnect.php",function(error,response,body){
                  if(error){
                        console.log(error);
                  }else{

                    download("http://"+data.domain_name+"/db_backup.sql", option1, function(err){
                        if (err) throw err
                        console.log("sql done");
                    })
                }
       });
     }
     });

     db.close();
});
});
