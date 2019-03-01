const express = require("express");
const mysql = require("mysql");
const exphbs = require("express-handlebars");
const routes = require("./controllers/burgers_controller.js")

var app = express();

// Set the port of our application
// process.env.PORT lets the port be set by Heroku

const PORT = process.env.PORT || 8080;

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static("public"));

// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(routes);

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

app.listen(PORT, function(){
    console.log("server listening on http://localhost:" + PORT)
})