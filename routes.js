var express = require("express");

var router = express.Router();

router.get("/",function(req,res){
console.log('hello.log im on the start page');
//res.render("index");
});

module.export = router;