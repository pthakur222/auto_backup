var download = require('download-file')
var request=require("request");


var url = "http://priyankathakur.in/archive.zip"

var options = {
    directory: "zipfolder",
    filename: "archive.zip"
}

request.get("http://priyankathakur.in/zip.php",function(error,response,body){
           if(error){
                 console.log(error);
           }else{

             download(url, options, function(err){
                 if (err) throw err
                 console.log("meow")
             })
         }
});
