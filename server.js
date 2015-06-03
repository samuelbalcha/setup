// Load the http module to create an http server.
var http = require('http');

// Configure HTTP server to respond with Hello World to all requests.

var server = http.createServer(function (req, res) {
    res.writeHead(200, {"Content-Type": "text/plain"});
    res.end("Hello World\n");
});

// Listen on port 8080
server.listen(8080);

console.log("Server running at port 8080");