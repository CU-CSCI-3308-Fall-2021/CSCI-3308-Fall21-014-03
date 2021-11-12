DROP TABLE IF EXISTS ingredients CASCADE;
CREATE TABLE IF NOT EXISTS ingredients(
  name VARCHAR(50) NOT NULL );

DROP TABLE IF EXISTS recipes CASCADE;
CREATE TABLE IF NOT EXISTS recipes(
  dish_name VARCHAR(30), 
  img VARCHAR(30),   
  recipeBlurb VARCHAR(6000),
  quantity VARCHAR(3000)[],
  parts VARCHAR(30)[]);


INSERT INTO ingredients(name)
VALUES ('eggs'),('flour'),('butter'),('sugar'),('salt'),('pepper'),('baking powder'),
('milk'),('beef'),('pork'),('seafood'),('pasta'), ('parsley'),('onions'),('carrots'), ('potatos'),('vegatable oil'),
('garlic'),('lemon juice'), ('white wine'), ('cream'),('chili flakes'),('rice'),('soy sauce'), ('oyster sauce'),
('sesame oil') ;


/*INSERT INTO recipes(dish_name, img, recipeInformation, parts, recipeBlurb)
VALUES('Muffins', 'cherryMuffins.png', ARRAY ['put recipe measurements here'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'milk', 'vegatable oil', 'cherries'], 'recipe blurb here'),
('Chocolate Chip Cookies', 'chocolateChipCookie.png', ARRAY ['put recipe measurements here'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'chocolate chips'], 'recipe blurb here'),
('Sugar Cookies', 'sugarCookies.png', ARRAY ['put recipe measurements here'],  ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs'], 'recipe blurb here'),
('Seafood Pasta', 'seafoodPasta.png', ARRAY ['put recipe measurements here'], ARRAY ['shrimp', 'garlic', 'lemon juice', 'white wine', 'cream', 'chili flakes', 'pasta'], 'recipe blurb here'),
('Fried Rice', 'friedRice.png', ARRAY ['put recipe measurements here'], ARRAY ['rice', 'egg', 'soy sauce', 'oyster sauce', 'sesame oil', 'butter'], 'recipe blurb here'),
('Simple salad','simpleSalad.png', ARRAY ['put recipe measurements here'], ARRAY ['spinach', 'tomato', 'red onion', 'sesame oil'], 'recipe blurb here'),
('Tom Yum Soup', 'tomYum.jpeg', ARRAY ['put recipe measurements here'], ARRAY ['shrimp', 'garlic', 'chicken stock','mushroom','tomato','onion'], 'recipe blurb here'),
('ERROR! You didnt give green machine any ingredients to work with!','error.png', ARRAY [''], ARRAY[''],'Click go back to home!');*/
INSERT INTO recipes(dish_name, img, recipeBlurb, quantity, parts)
VALUES('Muffins', 'cherryMuffins.png', 'recipeBlurb', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'milk', 'vegatable oil', 'cherries']),
('Chocolate Chip Cookies', 'chocolateChipCookie.png', 'recipeBlurb', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'chocolate chips']),
('Sugar Cookies', 'sugarCookies.png', 'recipeBlurb',  ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs']),
('Seafood Pasta', 'seafoodPasta.png', 'recipeBlurb', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['shrimp', 'garlic', 'lemon juice', 'white wine', 'cream', 'chili flakes', 'pasta']),
('Fried Rice', 'friedRice.png', 'recipeBlurb', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['rice', 'egg', 'soy sauce', 'oyster sauce', 'sesame oil', 'butter']),
('Simple salad','simpleSalad.png', 'recipeBlurb', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['spinach', 'tomato', 'red onion', 'sesame oil']),
('Tom Yum Soup', 'tomYum.jpeg', 'recipeBlurb', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['shrimp', 'garlic', 'chicken stock','mushroom','tomato','onion']);

DROP TABLE IF EXISTS user_ingredients CASCADE;
CREATE TABLE IF NOT EXISTS user_ingredients(
  ingredient_name VARCHAR(15));

  

