x// Dependencies
var express = require("express");
var mysql = require("mysql");
var inquirer = require("inquirer");

// Create express app instance.
var app = express();

// Specify the port.
var port = 3000;

// MySQL DB Connection Information (remember to change this with our specific credentials)
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "July_amis08",
  database: "bamazon_db"
});

// Initiate MySQL Connection.
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

// Routes
app.get("/bamazon", function(req, res) {

  // If the main route is hit, then we initiate a SQL query to grab all records.
  // All of the resulting records are stored in the variable "result."
  connection.query("SELECT * FROM products", function(err, result) {

    // We then begin building out HTML elements for the page.
    var html = "<h1> products </h1>";

    // Here we begin an unordered list.
    html += "<ul>";

    // We then use the retrieved records from the database to populate our HTML file.
    for (var i = 0; i < result.length; i++) {
      html += "<li><p> ID: " + result[i].id + "</p>";
      html += "<p>Product: " + result[i].product_name + " </p></li>";
      html += "<p>Department: " + result[i].department_name + " </p></li>";
      html += "<p>Price: " + result[i].price + " </p></li>";
      html += "<p>In Stock: " + result[i].stock_quantity + " </p></li>";
    }

    // We close our unordered list.
    html += "</ul>";

    // Finally we send the user the HTML file we dynamically created.
    res.send(html);
  });
});

// Initiate the listener.
app.listen(port);