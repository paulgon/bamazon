var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("Connected")
    displayProducts();
});

//show all products
function displayProducts() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        console.table(res);
        ask();
    });
}

function ask() {
    inquirer.prompt([
        {
            name: "ID",
            type: "input",
            message: "Enter ID of the product you would like to purchase."
        }
    ]).then(function (answer) {
        // console.log(answer.ID);
        var item = connection.query('SELECT * FROM products WHERE item_id= ?', [answer.ID], function (err, res) {
            if (err) throw err;
            console.table(res);
            quantity(res);
        })
    });

};

function quantity(res) {
    inquirer.prompt ([
        {
            name: "QTY",
            type: "input",
            message: "Enter desired quantity"
        }
    ]).then (function(answer){
        // console.log(answer.QTY);
        if (answer.QTY <= res [0].stock_quantity){
            var total = res[0].stock_quantity - answer.QTY;
            console.log ("Thank you! Your order total is: $" + (answer.QTY * res[0].price))
        }
        else {
            console.log("Insufficient quantity")
            displayProducts();
            return;
        }
        connection.query("update products set ? where ?",
            [{ stock_quantity: total }, { id: res[0].id }],
            function () {
                displayProducts();
            })
    })
}

