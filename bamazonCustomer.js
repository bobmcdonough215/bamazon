var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require("cli-table");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "inb2nb29",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect();

var display = function () {
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;
    console.log("--------------------------------");
    console.log("Welcome to Bobazon");
    console.log("--------------------------------");
    console.log("");
    console.log("See our products below");
    console.log("");

    var table = new Table({
      head: ["Product ID", "Product Name", "Department", "Price", "Quanity"],
      colWidths: [10, 30, 20, 10, 10],
    })
    for (var i = 0; i < res.length; i++) {
      table.push([res[i].id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quanity])

    }
    console.log(table.toString());
    console.log("");
  });
}
  var shopping = function () {
    inquirer
      .prompt({
        name: "buyProduct",
        type: "input",
        message: "Please enter the ID of the product you would like to buy!"
      })
      .then(function (answer1) {
        var selection = answer1.buyProduct;
        connection.query("SELECT * FROM products WHERE Id=?", selection, function (
          err,
          res
        ) {
          if (err) throw err;
          if (res.length === 0) {
            console.log(
              "Sir, this is a Wendy's"
            );

            shopping();
          } else {
            inquirer
              .prompt({
                name: "quantity",
                type: "input",
                message: "How many would you like?"
              })
              .then(function (answer2) {
                var quantity = answer2.quantity;
                if (quantity > res[0].stock_quantity) {
                  console.log(
                    "Sorry, we only have " +
                    res[0].stock_quantity +
                    "left."
                  );
                  shopping();
                } else {
                  console.log("");
                  console.log(res[0].products_name + " purchased");
                  console.log(quantity + " qty @ $" + res[0].price);

                  var newQuantity = res[0].stock_quantity - quantity;
                  connection.query(
                    "UPDATE products SET stock_quantity = " +
                    newQuantity +
                    " WHERE id = " +
                    res[0].id,
                    function (err, resUpdate) {
                      if (err) throw err;
                      console.log("");
                      console.log("Your Order has been Processed");
                      console.log("Thank you for Shopping with us...!");
                      console.log("");
                      connection.end();
                    }
                  );
                }
              });
          }
        });
      });
  };
}
display();