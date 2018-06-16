var email 	= require("emailjs");
var server 	= email.server.connect({
   user:    "info@priyankathakur.in",
   password: "pS@myal851",
   host:    "mail.priyankathakur.in",
   port: 25,
   ssl:     false,
   timeout: 30000
});

// send the message and get a callback with an error or details of the message that was sent
server.send({
   text:    "i hope this works",
   from:    "Priyanka Thakur <info@priyankathakur.in>",
   to:      "Mayank <thecorporator@gmail.com>, Priyanka <priyanka.thakur153@gmail.com>",
   subject: "testing emailjs"
}, function(err, message) { console.log(err || message); });
