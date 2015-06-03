var express = require('express');

var app = express.createServer(express.logger());

app.get('/', function(req, res){
    res.writeHead(200, {"Content-Type": "text/plain"});
    res.end("Hello World\n");
});

var port = proces.env.PORT || 8080;

app.listen(port, function(){
    console.log("Listening to port: " + port)
});