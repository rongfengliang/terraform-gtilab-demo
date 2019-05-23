const fetch = require('node-fetch');
require("dotenv").config()
const Mustache = require("mustache");
const fs = require("fs")
fetch(process.env.gitlab_api)
    .then(res => res.json())
    .then(body => {
        fs.readFile("template/temp.mu", {
            encoding: "utf8"
        }, (err,result) => {
            if (err) {
                console.log("some wrong")
            } else {
                let output = Mustache.render(result, body);
                console.log(output)
            }
        })
});