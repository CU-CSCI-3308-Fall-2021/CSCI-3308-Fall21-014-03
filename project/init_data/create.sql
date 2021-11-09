DROP TABLE IF EXISTS ingredients CASCADE;
CREATE TABLE IF NOT EXISTS ingredients(
  name VARCHAR(50) NOT NULL );

DROP TABLE IF EXISTS recipes CASCADE;
CREATE TABLE IF NOT EXISTS recipes(
  dish_name VARCHAR(300), 
  img VARCHAR(30),   
  recipeInformation VARCHAR(6000),
  quantity VARCHAR(30[]),
  parts VARCHAR(30)[]);


INSERT INTO ingredients(name)
VALUES ('eggs'),('flour'),('butter'),('sugar'),('salt'),('pepper'),('baking powder'),
('milk'),('beef'),('pork'),('seafood'),('pasta'), ('parsley'),('onions'),('carrots'), ('potatos'),('vegatable oil'),
('garlic'),('lemon juice'), ('white wine'), ('cream'),('chili flakes'),('rice'),('soy sauce'), ('oyster sauce'),
('sesame oil') ;


INSERT INTO recipes(dish_name, img, recipeInformation, quantity, parts)
VALUES('Muffins', 'cherryMuffins.png', 'info', ARRAY['test'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'milk', 'vegatable oil', 'cherries']),
('Chocolate Chip Cookies', 'chocolateChipCookie.png', 'info', ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'chocolate chips']),
('Sugar Cookies', 'sugarCookies.png', 'info',  ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs']),
('Seafood Pasta', 'seafoodPasta.png', 'info', ARRAY ['shrimp', 'garlic', 'lemon juice', 'white wine', 'cream', 'chili flakes', 'pasta']),
('Fried Rice', 'friedRice.png', 'info', ARRAY ['rice', 'egg', 'soy sauce', 'oyster sauce', 'sesame oil', 'butter']),
('Simple salad','simpleSalad.png', 'info', ARRAY ['spinach', 'tomato', 'red onion', 'sesame oil']),
('Tom Yum Soup', 'tomYum.jpeg', 'info', ARRAY ['shrimp', 'garlic', 'chicken stock','mushroom','tomato','onion']),
('ERROR! You didnt give green machine any ingredients to work with!','error.jpg','info',ARRAY[]);

DROP TABLE IF EXISTS user_ingredients CASCADE;
CREATE TABLE IF NOT EXISTS user_ingredients(
  ingredient_name VARCHAR(15));

