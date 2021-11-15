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
('milk'),('beef'),('pork'),('seafood'),('pasta'), ('parsley'),('onions'),('carrots'), ('potatos'),('vegetable oil'),
('garlic'),('lemon juice'), ('white wine'), ('cream'),('chili flakes'),('rice'),('soy sauce'), ('oyster sauce'),
('sesame oil'), ('olive oil'), ('cherries'), ('chocolate chips'), ('shrimp'), ('Pinot Grigio wine'), ('parmesan cheese'), 
('paprika'), ('parsely'), ('frozen vegetables'), ('bacon'), ('kale'), ('lima beans'), ('tomato'), ('Gouda cheese'), ('olives'),
('mushroom'), ('chicken stock'), ('vegetable broth'), ('lime'), ('lemongrass'), ('tom yum paste'), ('chili sauce'),
('ginger'), ('green onion'), ('');


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
VALUES('Muffins', 'cherryMuffins.png', '1) Preheat oven to 400 degrees F (200 degrees C). Line a muffin tin with paper liners. 2) Mix flour, 3/4 cup sugar, baking powder, and salt together in a bowl. 3) Whisk remaining ingredients into bowl. Fold cherries into batter and load into tray. 4)Bake muffins in the preheated oven until a toothpick inserted into the center comes out clean, about 20 minutes. Transfer to a wire rack to cool.', ARRAY ['3 eggs', '1 1/2 cup milk', '1 teaspoon vanilla extract', '3 cups flour', '1 cup sugar', '2 1/2 teaspoons baking powder', 'pinch of salt', '1/2 cup butter', '2 cups cherries', '1 teaspoon freshly grated lemon zest', '2 tablespoons butter'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'milk', 'vegetable oil', 'cherries', 'butter']),
('Chocolate Chip Cookies', 'chocolateChipCookie.png', '1) Preheat oven to 350 degrees F (175 degrees C). 2)Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans. 3)Bake for about 10 minutes in the preheated oven, or until edges are nicely browned.', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'chocolate chips']),
('Sugar Cookies', 'sugarCookies.png', '1) Mix together dry ingredients. 2) Add egg and milk and beat to combine. 3)Put mixer on low speed, gradually add flour, and beat until mixture pulls away from the side of the bowl. 4) Divide the dough in half, wrap in waxed paper, and refrigerate for 2 hours. 5) Preheat oven to 375. 6) Bake for 10 minutes or until ready.',  ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs']),
('Seafood Pasta', 'seafoodPasta.png', '1) Bring a large pot of lightly salted water to a boil. Cook linguine at a boil until tender yet firm to the bite, about 8 minutes. 2) While pasta cooks, melt 2 tablespoons butter in a skillet over medium heat. Add garlic and cook until fragrant and lightly browned, about 1 minute. Add shrimp and cook until tails start curling in, about 2 minutes per side. Add remaining butter, Pinot Grigio, lemon juice, half-and-half, and Parmesan cheese. Stir to incorporate. 3) Drain linguine and divide noodles between 2 bowls. Sprinkle with parsely.', ARRAY ['1/2 package pasta', '4 tablespoons butter', '2 cloves garlic, minced', '1 pound shrimp', '2 tablespoons Pinot Grigio wine', '2 teaspoons lemon juice', '1/4 cup parmesan cheese', '2 tablespoons chopped parsely'], ARRAY ['shrimp', 'garlic', 'lemon juice', 'white wine', 'cream', 'chili flakes', 'pasta']),
('Fried Rice', 'friedRice.png', '1) Prepare frozen vegetables according to package instructions and set aside. 2) Scramble the eggs in a medium skillet and chop into small bits; set aside. 3) Place bacon in a large, deep skillet. Cook over medium high heat until evenly brown. Drain, crumble and set aside, reserving skillet with bacon grease. 4) Place the rice in the skillet of bacon grease and saute for 2 to 3 minutes, until coated. Mix in soy sauce, mixed vegetables, carrots and peas. Cook for 20 minutes before stirring the bacon and eggs into the rice; cook for another 10 minutes, stirring, and serve.', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['rice', 'egg', 'soy sauce', 'oyster sauce', 'sesame oil', 'butter']),
('Simple salad','simpleSalad.png', '1) Mix kale, lima beans, Gouda cheese, Kalamata olives, and sun-dried tomatoes together in a bowl. 2) Whisk olive oil, lemon juice, paprika, honey, chipotle pepper, balsamic vinegar, black pepper, and kosher salt together in a bowl until dressing is smooth; pour over kale mixture and toss to coat.', ARRAY ['1 1/3 cups olive oil ', '1/2 cup lemon juice', '2 2/3 tablespoons paprika', '1 1/3 pounds kale', '2 1/3 cups forzen baby lima beans', '2/3 cup olives', '2/3 cup dried tomato'], ARRAY ['kale','olive oil', 'lemon juice', 'paprika', 'lima beans', 'tomato', 'olives']),
('Tom Yum Soup', 'tomYum.jpeg', '1) Combine vegetable broth and shrimp in a pot over medium-high heat. Bring to a low boil for 10 minutes, then lower heat and simmer for 10 minutes. Remove shrimp from the broth and remove and discard shells; set shrimp aside. 2)Add lime juice, lime pulp, chile peppers, lemon grass, tom yum paste, fish sauce, sugar, chile sauce, and ginger slices to the broth; cook for 10 minutes. Remove chile peppers, lemongrass, and ginger slices with a slotted spoon and discard. Add cooked shrimp and remove from the heat. 3) Ladle soup into bowls and top with mushroom slices and green onions.', ARRAY ['4 cups vegetable broth', '1 pound shrimp', '4 limes juiced with pulp', '2 stalks lemongrass quartered', '2 tablespoons tom yum paste', '1 1/2 tablespoons fish sauce', '1 tablespoon sugar', '1 tablespoon chili sauce', '4 (1/4 inch thick) slices fresh ginger root', '6 sliced mushrooms', '2 green onions, thinly sliced'], ARRAY ['vegetable broth', 'shrimp', 'lime', 'lemongrass', 'tom yum paste', 'fish sauce', 'sugar', 'chili sauce', 'ginger', 'mushroom', 'green onion']),
('ERROR!!!','error.png','Looks like Green Machine does not have a recipe that matches your input! Go back to home & try again!',ARRAY[''],ARRAY['']);

DROP TABLE IF EXISTS user_ingredients CASCADE;
CREATE TABLE IF NOT EXISTS user_ingredients(
  ingredient_name VARCHAR(15));

  

