DROP TABLE IF EXISTS ingredients CASCADE;
CREATE TABLE IF NOT EXISTS ingredients(
  name VARCHAR(50) NOT NULL );

DROP TABLE IF EXISTS recipes CASCADE;
CREATE TABLE IF NOT EXISTS recipes(
  dish_name VARCHAR(30), 
  img VARCHAR(30),    
  parts VARCHAR(30)[]);

INSERT INTO ingredients(name)
VALUES ('eggs'),('flour'),('butter'),('sugar'),('salt'),('pepper'),('baking powder'),
('milk'),('beef'),('pork'),('seafood'),('pasta'), ('parsley'),('onions'),('carrots'), ('potatos'),('vegatable oil'),
('garlic'),('lemon juice'), ('white wine'), ('cream'),('chili flakes'),('rice'),('soy sauce'), ('oyster sauce'),
('sesame oil') ;


INSERT INTO recipes(dish_name, img, parts)
VALUES('Muffins', '../views/img/cherryMuffins.png', ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'milk', 'vegatable oil', 'cherries']),
('Chocolate Chip Cookies', '../views/img/chocolateChipCookie.png', ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'chocolate chips']),
('Sugar Cookies', '../views/img/sugarCookies.png', ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs']),
('Seafood Pasta', '../views/img/seafoodPasta.png', ARRAY ['shrimp', 'garlic', 'lemon juice', 'white wine', 'cream', 'chili flakes', 'pasta']),
('Fried Rice', '../views/img/friedRice.png', ARRAY ['rice', 'egg', 'soy sauce', 'oyster sauce', 'sesame oil', 'butter']),
('Simple salad','../views/img/simpleSalad.png', ARRAY ['spinach', 'tomato', 'red onion', 'sesame oil']);

DROP TABLE IF EXISTS user_ingredients CASCADE;
CREATE TABLE IF NOT EXISTS user_ingredients(
  ingredient_name VARCHAR(15));

