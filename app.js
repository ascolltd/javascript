var express = require("express");
var path = require("path");

var routes = require("./routes");
var app = express();

app.set("port",process.env.PORT || 3000);
app.use(routes);
app.listen(app.get("port"),function(){
    console.log("server added on prot 3000npm"+app.get("port"));
});
