var Client = require('ftp');
var zipFolder = require('zip-folder');
var c = new Client();

  // connect to localhost:21 as anonymous
  c.connect({
    host: 'ftp.priyankathakur.in',
    port: 21,
    user: 'priyankathakur@priyankathakur.in',
    password: 'pS@myal851'
});

c.on('ready', function() {
  // c.list(function(err, list) {
  //   if (err) throw err;
  //   list.forEach(function(data){
  //     console.log("data value");
  //     console.log(data);
  //   })
    c.cwd("/",function(err,currentDir){
      console.log("directory");
      console.log(currentDir);

      // zipFolder(cwd, 'archive.zip', function(err) {
      //       if(err) {
      //           console.log('oh no!', err);
      //       } else {
      //           console.log('EXCELLENT');
      //       }
      //   });

     })
    c.end();
});
