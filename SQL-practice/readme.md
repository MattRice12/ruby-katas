##How many users are there?
SELECT COUNT(\*) FROM users;

##What are the 5 most expensive items?
SELECT * FROM items ORDER BY price DESC LIMIT 5;
  Small Cotton Gloves
  Small Wooden Computer
  Awesome Granite Pants
  Sleek Wooden Hat
  Ergonomic Steel Car

##What's the cheapest book? (Does that change for "category is exactly 'book'" versus "category contains 'book'"?)

SELECT * FROM items WHERE category LIKE '%books%' ORDER BY price LIMIT 1;
  Ergonomic Granite Chair


SELECT * FROM items WHERE category LIKE 'books' ORDER BY price LIMIT 1;
  Ergonomic Granite Chair


##Who lives at "6439 Zetta Hills, Willmouth, WY"? Do they have another address?
SELECT * FROM users JOIN addresses ON users.id = addresses.user_id WHERE street = '6439 Zetta Hills' AND city = 'Willmouth';
  40|Corrine|Little|rubie_kovacek@grimes.net|43|40|6439 Zetta Hills|Willmouth|WY|15029


SELECT * FROM addresses WHERE user_id = 40;
  Yes.
    43|40|6439 Zetta Hills|Willmouth|WY|15029
    44|40|54369 Wolff Forges|Lake Bryon|CA|31587
##Correct Virginie Mitchell's address to "New York, NY, 10108".


##How much would it cost to buy one of each tool?


##How many total items did we sell?


##How much was spent on books?


##Simulate buying an item by inserting a User for yourself and an Order for that User.
