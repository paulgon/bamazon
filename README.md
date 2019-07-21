# bamazon

An Amazon-like storefront CLI app using MySQL. The app takes in orders rom customers and depletes stock from the store's inventory.

## Steps taken for app creation:

Created a MySQL Database called bamazon.
Then created a Table inside of that database called products.
The products table each have the following columns:

-item_id (unique id for each product)
-product_name (Name of product)
-department_name
-price (cost to customer)
-stock_quantity (how much of the product is available in stores)

Populated this database with 10 different products. (i.e. Insert "mock" data rows into this database and table).
Then created a Node application called bamazon.js. Running this application displays all of the items available for sale. Included the ids, names, and prices of products for sale.
The app should then prompt users with two messages.

The first should ask them the ID of the product they would like to buy.
The second message should ask how many units of the product they would like to buy.

Once the customer has placed the order, the application should check if the store has enough of the product to meet the customer's request.

If not, the app should log a phrase like Insufficient quantity!, and then prevent the order from going through.

Update the SQL database to reflect the remaining quantity.
Once the update goes through, show the customer the total cost of their purchase.

## Images

![Image1](https://user-images.githubusercontent.com/50177334/61595930-c8a87880-abc2-11e9-891f-2953f91f4d92.png)

![Image2](https://user-images.githubusercontent.com/50177334/61595941-fdb4cb00-abc2-11e9-9259-6d59a4d2c078.png)

![Image3](https://user-images.githubusercontent.com/50177334/61595941-fdb4cb00-abc2-11e9-9259-6d59a4d2c078.png)

![Image4](https://user-images.githubusercontent.com/50177334/61595980-55ebcd00-abc3-11e9-850a-dc4b541e935f.png)

