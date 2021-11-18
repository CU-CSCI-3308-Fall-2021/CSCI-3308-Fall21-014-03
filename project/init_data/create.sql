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
('ginger'), ('green onion'), ('radish'), ('egg yolks'), ('cream of tartar'), ('hot dogs'), ('macaroni'), 
('parmesan'), ('bread crumbs'),('tofu'), ('black beans'), ('beans'), ('oregano'), ('salsa'), ('sausage'), ('beef'), 
('ground beef'), ('tomato sauce'), ('noodles'), ('brown sugar'), ('milk'), ('cinnamon'), ('pumpkin'), ('red wine vinegar'),
('red onion'),('cherry tomato'),('feta cheese'), ('cucumber'), ('quinoa'), ('cumin'), ('lime juice'), ('cilantro'),
('red lentils'),('lentils'),('cayenne'),('curry powder'), ('coconut milk'), ('spinach'), ('brussel sprouts'), ('maple syrup');

INSERT INTO recipes(dish_name, img, recipeBlurb, quantity, parts)
VALUES('Muffins', 'cherryMuffins.png', '1) Preheat oven to 400 degrees F (200 degrees C). Line a muffin tin with paper liners. 2) Mix flour, 3/4 cup sugar, baking powder, and salt together in a bowl. 3) Whisk remaining ingredients into bowl. Fold cherries into batter and load into tray. 4)Bake muffins in the preheated oven until a toothpick inserted into the center comes out clean, about 20 minutes. Transfer to a wire rack to cool.', ARRAY ['3 eggs', '1 1/2 cup milk', '1 teaspoon vanilla extract', '3 cups flour', '1 cup sugar', '2 1/2 teaspoons baking powder', 'pinch of salt', '1/2 cup butter', '2 cups cherries', '1 teaspoon freshly grated lemon zest', '2 tablespoons butter'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'milk', 'vegetable oil', 'cherries', 'butter']),
('Chocolate Chip Cookies', 'chocolateChipCookie.png', '1) Preheat oven to 350 degrees F (175 degrees C). 2)Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans. 3)Bake for about 10 minutes in the preheated oven, or until edges are nicely browned.', ARRAY ['2 1/4 cup flour', '1 cup white sugar', '3/4 cup brown sugar','1 cup butter','1 teaspoon salt','1 teaspoon baking soda','2 eggs','2 teaspoons vanilla extract','2 cups chocolate chips'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs', 'chocolate chips']),
('Sugar Cookies', 'sugarCookies.png', '1) Mix together dry ingredients. 2) Add egg and milk and beat to combine. 3)Put mixer on low speed, gradually add flour, and beat until mixture pulls away from the side of the bowl. 4) Divide the dough in half, wrap in waxed paper, and refrigerate for 2 hours. 5) Preheat oven to 375. 6) Bake for 10 minutes or until ready.',  ARRAY ['2 1/2 cup flour', '1 1/4 sugar','1 cup butter','3 egg yolks','1 teaspoon vanilla extract','1 teaspoon baking soda','1/2 teaspoon crewam of tartar'], ARRAY ['flour', 'baking powder', 'salt', 'sugar', 'eggs','egg yolks','butter','cream of tartar']),
('Seafood Pasta', 'seafoodPasta.png', '1) Bring a large pot of lightly salted water to a boil. Cook linguine at a boil until tender yet firm to the bite, about 8 minutes. 2) While pasta cooks, melt 2 tablespoons butter in a skillet over medium heat. Add garlic and cook until fragrant and lightly browned, about 1 minute. Add shrimp and cook until tails start curling in, about 2 minutes per side. Add remaining butter, Pinot Grigio, lemon juice, half-and-half, and Parmesan cheese. Stir to incorporate. 3) Drain linguine and divide noodles between 2 bowls. Sprinkle with parsely.', ARRAY ['1/2 package pasta', '4 tablespoons butter', '2 cloves garlic, minced', '1 pound shrimp', '2 tablespoons Pinot Grigio wine', '2 teaspoons lemon juice', '1/4 cup parmesan cheese', '2 tablespoons chopped parsely'], ARRAY ['shrimp', 'garlic', 'lemon juice', 'white wine', 'cream', 'chili flakes', 'pasta']),
('Fried Rice', 'friedRice.png', '1) Prepare frozen vegetables according to package instructions and set aside. 2) Scramble the eggs in a medium skillet and chop into small bits; set aside. 3) Place bacon in a large, deep skillet. Cook over medium high heat until evenly brown. Drain, crumble and set aside, reserving skillet with bacon grease. 4) Place the rice in the skillet of bacon grease and saute for 2 to 3 minutes, until coated. Mix in soy sauce, mixed vegetables, carrots and peas. Cook for 20 minutes before stirring the bacon and eggs into the rice; cook for another 10 minutes, stirring, and serve.', ARRAY ['1 cup flour', '1/2 sugar'], ARRAY ['rice', 'egg', 'soy sauce', 'oyster sauce', 'sesame oil', 'butter']),
('Kale salad','kaleSalad.png', '1) Mix kale, lima beans, Gouda cheese, Kalamata olives, and sun-dried tomatoes together in a bowl. 2) Whisk olive oil, lemon juice, paprika, honey, chipotle pepper, balsamic vinegar, black pepper, and kosher salt together in a bowl until dressing is smooth; pour over kale mixture and toss to coat.', ARRAY ['1 1/3 cups olive oil ', '1/2 cup lemon juice', '2 2/3 tablespoons paprika', '1 1/3 pounds kale', '2 1/3 cups forzen baby lima beans', '2/3 cup olives', '2/3 cup dried tomato'], ARRAY ['kale','olive oil', 'lemon juice', 'paprika', 'lima beans', 'tomato', 'olives']),
('Tom Yum Soup', 'tomYum.jpeg', '1) Combine vegetable broth and shrimp in a pot over medium-high heat. Bring to a low boil for 10 minutes, then lower heat and simmer for 10 minutes. Remove shrimp from the broth and remove and discard shells; set shrimp aside. 2)Add lime juice, lime pulp, chile peppers, lemon grass, tom yum paste, fish sauce, sugar, chile sauce, and ginger slices to the broth; cook for 10 minutes. Remove chile peppers, lemongrass, and ginger slices with a slotted spoon and discard. Add cooked shrimp and remove from the heat. 3) Ladle soup into bowls and top with mushroom slices and green onions.', ARRAY ['4 cups vegetable broth', '1 pound shrimp', '4 limes juiced with pulp', '2 stalks lemongrass quartered', '2 tablespoons tom yum paste', '1 1/2 tablespoons fish sauce', '1 tablespoon sugar', '1 tablespoon chili sauce', '4 (1/4 inch thick) slices fresh ginger root', '6 sliced mushrooms', '2 green onions, thinly sliced'], ARRAY ['vegetable broth', 'shrimp', 'lime', 'lemongrass', 'tom yum paste', 'fish sauce', 'sugar', 'chili sauce', 'ginger', 'mushroom', 'green onion']),
('Lasagna', 'lasagna.png', '1) Cook sausage, ground beef, onion, and garlic over medium heat until browned. 2) Stir in crushed tomatoes, tomato paste, tomato sauce, and water. 3) Season with sugar, basil, fennel seeds, italian seasoning. 4) Simmer for about 1.5 hours, stirring occasionally. 5) Cook noodles in boiling water 8-10 minutes. 6) Combine ricotta cheese with egg, parsley, salt. 7) preheat oven to 375 degrees F. 8) To assemble, layer sauce, noodles, cheese in dish. Repeat layers. 9) Cover in foil, bake 25 min, remove foil and bake 25 more min.', ARRAY ['1 pound sausage', '3/4 pound ground beef','1/2 cup minced onion','2 cloves garlic', '1 can crushed tomatoes', '2 cans tomato paste','1/2 teaspoon fennel seeds', '12 lasagna noodles','1 egg','16 onces ricotta cheese'], ARRAY ['cheese', 'egg', 'noodles', 'tomato','tomato sauce','onion','ground beef','beef','sausage']),
('Banh Mi','banhmi.png','1) Bring water, rice vinegar, and sugar to a boil, stir until sugar dissolves. 2) Pour cooled mixture over carrot, radish, onion in a bowl, allow to stand for 30 minutes. Drain excess vinager after veggies have marinated. 3) Broil chicken breast on broiler pan, until center of chicken breast is not pink, and surface is brown, about 6 min per side. Slize into bite sized pieces. 4) Slice baguette in half, pull out center of bread to create cavity. Toast baguette halves for 2-3 min. 5) Spread mayonnaise to each half and fill cavity with chicken, cucumber slices, pickled carrot, onion, radish, cilanto, and jalapenos.', ARRAY ['1/2 cup rice vinegar','1/4 cup water','1/4 cup white sugar','1/4 cup carrot, cut into 1/16 inch slices','1/4 cup radish, cut into 1/16 inch slices','1/4 cup thinly sliced white onion','1 boneless chicken breast half','4 tablespoons mayonnaise','1/4 cup sliced cucumber','1 (12 inch) baguette','1 small jalapeno'], ARRAY ['chicken','chicken breast','rice vinegar','carrot','radish','onion','cucumber','jalapeno','baguette','bread']),
('Chili','chili.png','1) Cook and stir beef over medium-high heat unil browned and crumbly, 5-7 min. Drain and discard grease. 2) Add 2 cans black beans, tomato sauce, salsa, and chili seasoning to large pot over medium heat. 3) Stir cooked ground beef into mixture, bring to a simmer, and cook about 20-25 minutes. It will be hot.', ARRAY ['1 pound ground beef','2 cans black beans','2 cans tomato sauce','1 jar salsa','1 tablespoon chili seasoning'], ARRAY ['ground beef','beans','black beans','tomato sauce','salsa']),
('Mac n Cheese', 'macNcheese.png','1) Preheat oven to 350 degrees F. 2) Bring large pot of lightly salted water to boil. 3) Cook pasta for 8-10 min. 4) Heat cheese sauce in microwave for 1 min. In 8x8 baking dish, combine poasta, cheese sauce, sliced hot dogs, parmesan, and oregano. 5) Top with bread crumbs and bake for 10 min. Should be delightful.', ARRAY ['1 cup macaroni','1/2 cup cheese sauce','2 hot dogs, sliced','1 teaspoon grated parmesan','1 pinch dried oregano','1/3 cup bread crumbs'], ARRAY ['bread crumbs','macaroni','pasta','hot dogs','cheese','oregano','parmesan']),
('Crispy Fried Tofu','tofu.png', '1) Press tofu for 20 min to drain excess water. 2) Cut tofu into 1-inch by 2-inch chunks. Sprinkle 1/4 teaspoon salt onto each side. 3) Heat oil in large skillet. Place 5-8 pieces of tofu at a time in hot oil. Fry until golden, 3-4 min. 4) Drain tofu on paper towel lined plate. Allow to cool before serving.', ARRAY ['1 (12 ounce) package extra-firm tofu','1/2 teaspoon salt','vegetable oil for frying'], ARRAY ['tofu','salt','oil']),
('Sweet potato casserole', 'casserole.png', '1) Preheat oven to 350 degrees F (175 degrees C). 2) Place sweet potatoes in a large saucepan with enough water to cover. Bring to a boil, and cook until tender, about 15 minutes. Remove from heat, drain, and mash. 3) Place mashed sweet potatoes in large bowl, and use an electric mixer to blend with the margarine, brown sugar, orange juice, and cinnamon. Spread evenly into a 9x13 inch baking dish. Top with miniature marshmallows. 4) Bake for 25 to 30 minutes in the preheated oven, or until heated through, and marshmallows are puffed and golden brown.', ARRAY ['5 sweet potatoes sliced', '1/4 cup reduced fat margarine', '1/2 cup packed brown sugar', '3tablespoons orange juice', '1 pinch ground cinnamon', '1 (10.5 ounce) package miniature marshmallows'], ARRAY ['marshmallow', 'orange juice', 'cinnamon', 'brown sugar', 'margarine', 'sweet potato']),
('Pumpkin pancakes', 'pumpkinpancake.png', '1) In a bowl, mix together the milk, pumpkin, egg, oil and vinegar. Combine the flour, brown sugar, baking powder, baking soda, allspice, cinnamon, ginger and salt in a separate bowl. Stir into the pumpkin mixture just enough to combine. 2) Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.',ARRAY ['1 1/2 cups milk','1 cup pumpkin puree', '1 egg', '2 tablespoons vegetable oil ', '2 tablespoons vinegar', '2 cups all-purpose flour', '3 tablespoons brown sugar', '2 teaspoons baking powder', '1 teaspoon baking soda', '1 teaspoon ground allspice', '1 teaspoon ground cinnamon', '1/2 teaspoon ground ginger', '1/2 teaspoon salt'], ARRAY['flour', 'vinegar', 'salt', 'baking soda', 'baking powder', 'cinnamon', 'pumpkin', 'milk', 'vegetable oil']),
('Grilled cheese', 'grilledcheese.png', '1) In a small bowl, mash together the butter and Parmesan cheese until evenly blended. Make sandwiches by placing two slices of bacon and one slice of Cheddar cheese on half of the bread slices. Top with the remaining slices of bread. 2) Heat a large skillet over medium heat. Spread some of the butter mixture on the top of each sandwich. Place sandwiches butter side down in the skillet. Spread the remaining butter mixture on the other sides. Cook until golden brown on each side, about 3 minutes per side. To serve, cut in half diagonally.', ARRAY['1/4 cup cup butter, softened', '1 cup freshly grated parmesan cheese', '8 slices cooked bacon', '4 slices Cheddar cheese ', '8 slices sourdough bread'], ARRAY ['sourdough bread', 'cheddar cheese', 'bacon', 'parmesan cheese', 'butter']),
('Nachos', 'nachos.png', '1) Line rimmed baking sheet with foil, 2) Combine refried beans and salsa in saucepan, cook about 5 minutes over medium heat, stir until mixed. 3) Arrage tortilla chips on baking sheet. Spoon bean mixture over chips. Sprinkle cheese, green bell pepper, and onion on top. 4) Cook until cheese melts, 3-5 min. Garnish with lettuce and olives.', ARRAY ['2 (15 ounce) cans refried beans','1 (7.75 ounce) can jalapeno salsa','1 (12 ounce) bag tortilla chips','1 (8 ounce package shredded pepper Jack cheese','1 green bell pepper, chopped','1 onion, chopped','1 (8 ounce) package shredded lettuce'], ARRAY ['salsa','jalapeno','jalapeno salsa','pepper jack cheese','cheese','bell pepper','green bell pepper','onion','lettuce','tortilla chips','beans','refried beans']),
('Greek Pasta Salad', 'pastaSalad.png', '1) Bring large pot of lightly salted water to boil, add penne and boil until cook but firm to the bite, about 11 min. 2) Whisk together vinegar, lemon juice, garlic, oregano, salt, pepper, and olive oil. 3) Combine pasta, tomatoes, onion, green and red peppers, cucumber, olives, and feta cheese in a bowl. 4) Pour vinaigrette over pasta and mix together. 5) Cover and chill for 3 hours before serving.', ARRAY ['2 cups penne pasta','1/4 cup red wine vinegar','1 tablespoon lemon juice','2 cloves garlic, crushed','2 teaspoons dried oregano','salt and pepper to taste','10 cherry tomatoes, halved','1 red onion, chopped','1 green bell pepper, chopped','1 red bell pepper, chopped','1/2 cucumber, sliced','1/2 cup sliced black olives','1/2 cup crumbled feta cheese'], ARRAY ['feta cheese','cheese','cucumber','red bell pepper','bell pepper','olives','olive oil','lemon juice','tomatoe','cherry tomato','red onion','pasta','red wine vinegar','garlic','oregano']),
('Quinoa Salad', 'quinoaSalad.png', '1) Bring water to boil, add quinoa, reduce to medium-low heat and simmer until water has been absorbed, 15-20 min. 2) Whisk together olive oil, lime juice, cumin, and 1 teaspoon salt. 3) Combine cooled quinoa, black beans, and cucumber. Pour dressing and toss to coat. Stir in cilantro and season with salt and pepper.', ARRAY ['2 cups water','1 cup quinoa','1/4 cup extra-virgin olive oil','1/4 cup lime juice','2 teaspoons ground cumin','1 teaspoon salt','1 (15 ounce) can black beans','1 1/2 cups diced cucumber','1/4 cup chopped cilantro','salt and pepper to taste'], ARRAY ['black beans','beans','cilantro','olive oil','cucumber','salt','pepper','lime juice','cumin','quinoa']),
('Curry in a Hurry', 'curry.png', '1) Combine water, tomatoes, coconut milk, red lentils, spinach, onion, tomato paste, curry powder, garlic, bouillon base, and cayenne pepper in a pressure cooker. 2) Select high pressure, set timer for 15 minutes. 3) Release pressure, let sit for 10 minutes. 4) Unlock and remove lid. Stir and let sit for 5 minutes before serving.', ARRAY ['5 cups water','1 (14.5 ounce) can diced tomatoes','1 (14 ounce) can light coconut milk','2 cups red lentils','1 cup frozen spinach','1 red onion, chopped','3 tablespoons tomato paste','2 tablespoons curry powder','3 cloves garlic, minced','2 teaspoons vegetable bouillon base','1 teaspoon cayenne pepper'], ARRAY ['curry powder','garlic','tomato paste','cayenne','bouillon cube','red onion','spinach','diced tomatoes','coconut milk','lentils','red lentils']),
('Roasted Brussels Sprouts', 'brusselsprouts.png', '1) Preheat oven to 400 degrees F (200 degrees C). 2) Place Brussels sprouts in a single layer in a baking dish. Drizzle with olive oil and maple syrup; toss to coat. Sprinkle with bacon; season with salt and black pepper. 3) Roast in the preheated oven until bacon is crispy and Brussels sprouts are caramelized, 45 minutes, stirring halfway through.', ARRAY ['1 pound brussel sprouts', '1/4 cup extra virgin olive oil', '3 tablespoons maple syrup', '4 slices bacon, cut into 1/2-inch pieces', '1/2 teaspoon salt', '1/4 teaspoon black pepper'], ARRAY['black pepper', 'salt', 'bacon', 'brussel sprouts', 'olive oil', 'maple syrup']),
('Meatloaf', 'meatloaf.png', '1) Preheat oven to 350 degrees F (175 degrees C). 2) In a large bowl, combine the beef, egg, onion, milk and bread OR cracker crumbs. Season with salt and pepper to taste and place in a lightly greased 9x5-inch loaf pan, or form into a loaf and place in a lightly greased 9x13-inch baking dish. 3) In a separate small bowl, combine the brown sugar, mustard and ketchup. Mix well and pour over the meatloaf. 4) Bake at 350 degrees F (175 degrees C) for 1 hour.', ARRAY['1 1/2 pounds ground beef', '1 egg', '1 chopped onion', '1 cup milk', '1 cup dried bread crumbs', 'salt and pepper to taste', '2 tablespoons brown sugar', '2 tablespoons prepared mustard', '1/3 cup ketchup'], ARRAY ['ketchup', 'egg', 'salt', 'ground beef', 'mustard', 'bread crumbs']),
('Roasted asparagus', 'asparagus.png', '1) Preheat an oven to 425 degrees F (220 degrees C). 2) Place the asparagus into a mixing bowl, and drizzle with the olive oil. Toss to coat the spears, then sprinkle with Parmesan cheese, garlic, salt, and pepper. Arrange the asparagus onto a baking sheet in a single layer. 3) Bake in the preheated oven until just tender, 12 to 15 minutes depending on thickness. Sprinkle with lemon juice just before serving.', ARRAY ['1 bunch thin asparagus spears', '3 tablespoons olive oil', '1 teaspoon sea salt', '1 clove garlic', '1/2 teaspoon ground black pepper'], ARRAY['asparagus', 'olive oil', 'garlic', 'black pepper']),
('Banana bread', 'bananabread.png', '1) Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x5 inch loaf pan. 2) In a large bowl, combine flour, baking soda and salt. In a separate bowl, cream together butter and brown sugar. Stir in eggs and mashed bananas until well blended. Stir banana mixture into flour mixture; stir just to moisten. Pour batter into prepared loaf pan. 3) Bake in preheated oven for 60 to 65 minutes, until a toothpick inserted into center of the loaf comes out clean. Let bread cool in pan for 10 minutes, then turn out onto a wire rack.', ARRAY ['2 cups all-purpose flour', '1 teaspoon baking soda', '1/4 teaspoon salt', '1/2 cup butter', '3/4 cup brown sugar', '2 eggs, beaten', '2 1/3 mashed overripe bananas'], ARRAY ['banana', 'bananas', 'brown sugar', 'eggs', 'salt', 'baking soda', 'flour']),
('Steak sandwich', 'steaksandwich.png', '1) Heat the oil in a large skillet over medium heat. Add the beef, and cook until browned. Add the mushrooms, bell pepper and onion; cook and stir until starting to become tender, about 5 minutes. 2) In a slow cooker, combine the beef broth, salt, pepper, Worcestershire sauce, red pepper flakes and red wine. Transfer the beef and vegetables to the slow cooker, and stir to blend. Cover, and cook on High for 3 to 4 hours, until beef is extremely tender. 3) Preheat the oven to 425 degrees F (220 degrees C). Drain the liquid from the slow cooker, and save for dipping. Slice the French bread loaf lengthwise like a submarine sandwich. Mix together the horseradish and mustard; spread onto the inside of the loaf. Place slices of provolone cheese on both sides of the loaf, then fill with the beef and vegetables. Close the loaf, and wrap the entire sandwich with aluminum foil. 4) Bake for 10 to 15 minutes in the preheated oven. For crunchier bread, you can bake it without the aluminum foil. Slice into servings, and serve with the juices from the slow cooker for dipping.', ARRAY ['2 tablespoons olive oil', '1 pound thinly sliced sirloin steak strips', '8 ounces sliced fresh mushrooms', '1 green bell pepper, seeded and cut into strips', '1 medium onion, sliced', '10 slices provolone cheese', '1 loaf French bread', '1 (14 ounce) can beef broth', '1/2 teaspoon salt', '1/2 teaspoon ground black pepper', '1/2 teaspoon garlic powder', '1/4 cup Pinot Noir or other dry red wine'], ARRAY ['pinot noir wine', 'red wine', 'bread', 'steak', 'olive oil','loaf', 'provolone cheese', 'bell pepper', 'mushroom']),
('Potato soup', 'potatosoup.png', '1) In a Dutch oven, cook the bacon over medium heat until done. Remove bacon from pan, and set aside. Drain off all but 1/4 cup of the bacon grease. 2) Cook celery and onion in reserved bacon drippings until onion is translucent, about 5 minutes. Stir in garlic, and continue cooking for 1 to 2 minutes. Add cubed potatoes, and toss to coat. Saute for 3 to 4 minutes. Return bacon to the pan, and add enough chicken stock to just cover the potatoes. Cover, and simmer until potatoes are tender. 3) In a separate pan, melt butter over medium heat. Whisk in flour. Cook, stirring constantly, for 1 to 2 minutes. Whisk in the heavy cream, tarragon, and cilantro. Bring the cream mixture to a boil, and cook, stirring constantly, until thickened. Stir the cream mixture into the potato mixture. Puree about 1/2 the soup, and return to the pan. Adjust seasonings to taste.', ARRAY ['1 pound chopped bacon', '2 stalks celery, diced', '1 onion, chopped', '3 cloves garlic, minced', '8 potatoes, peeled and cubed ', '4 cups chicken stock', '3 tablespoons butter', '1/4 cup all-purpose flour', '1 cup heavy cream', '1 teaspoon dried tarragon', '3  teaspoons chopped fresh cilantro', 'salt and pepper to taste'], ARRAY ['tarragon','heavy cream','flour','butter','chicken stock','bacon', 'celery', 'onion', 'garlic', 'potato', 'potatoes', 'salt', 'pepper', 'cilantro']),
('Pineapple ham', 'pineappleham.png', '1) Preheat oven to 325 degrees F (165 degrees C). Place the ham, cut side down, into a roasting pan. 2) Cut the skin off the pineapple with a sharp knife and cut out any brown spots of skin left behind. Slice the pineapple into 1/2-inch slices and cut the cores out of the slices. Pin the slices onto the ham with toothpicks. 3) Bake ham in the preheated oven until a meat thermometer inserted into the thickest part of the ham reads 140 degrees F (60 degrees C), 1 1/2 to 2 hours. 4) While the ham is baking, mix the pineapple juice and brown sugar in a microwave-safe ceramic or glass bowl and microwave on medium power until the glaze is boiling and slightly thickened. Work carefully because the glaze will be sticky and very hot. 5) Pour about half the glaze evenly over the ham and pineapple about 1 hour before the end of baking; pour the rest over the ham about 30 minutes before the end of baking.', ARRAY ['1 (6 pound) fully-cooked, bone-in ham', '1 pineapple', '2 (6 ounce) cans pineapple juice', '1 cup brown sugar', '2 (6 ounce) cans pineapple juice'], ARRAY['pineapple', 'pineapples', 'pineapple juice', 'ham', 'brown sugar']),
('Burrata Chicken Sliders', 'burrata.png', '1) Cut chicken breasts in half to fit a slider bun. Season both sides of chicken with salt and pepper. Lightly oil a grill or pan-grill over medium heat. Grill chicken until no longer pink inside, about 5 minutes per side. Set aside. 2) Toast buns by grilling them cut-side down. For each sandwich, layer cooked chicken breast, tomato slice, fresh basil leaf, and burrata slice between the toasted slider buns.', ARRAY ['6 thinly sliced boneless chicken breasts (or cutlets)', '1 pinch Salt and pepper', '1 tablespoon olive oil', '12 slider buns, split', '1 tomato, thinly sliced ', '12 basil leaves', '1 (8 ounce) package burrata cheese, sliced to include filling'], ARRAY ['burrata cheese', 'tomato', 'butter', 'slider buns', 'buns', 'chicken breasts', 'olive oil', 'salt', 'pepper']),
('Easy Zucchini', 'easyzuccini.png', '1) Season zucchini with salt and pepper and brush lightly with olive oil. 2) Heat a grill pan over medium-high heat. Place zucchini slices, a few at a time, into hot pan and cook until the pattern of the pan is imprinted into zucchini, about 4 minutes. Turn and cook an additional 3 to 4 minutes. 3) Combine olive oil, vinegar, parsley, garlic, salt, and pepper in a small bowl. Brush cooked zucchini with olive oil mixture and serve.', ARRAY ['2 medium zucchini, sliced lengthwise', '4 tablespoons extra virgin olive oil', '2 tablespoons white wine vinegar', '2 tablespoons chopped fresh parsley', '2 cloves minced garlic', 'salt and freshly ground black pepper to taste'], ARRAY ['salt', 'pepper', 'garlic', 'zucchini', 'parsely']),
('Sinaloa-Style Ceviche', 'ceviche.png', '1) Combine shrimp, white onion, and juice of 7 limes in a large bowl. Cover with plastic wrap and refrigerate until shrimp is opaque, about 12 hours. Drain, discarding accumulated juices. 2) Blend juice of remaining 7 limes with serrano chile pepper. Pour into a large bowl. 3) Combine shrimp and onion mixture, crabmeat, tomatoes, cucumber, red onion, jalapeno peppers, and cilantro in the bowl. Stir in tomato and clam juice cocktail. Season with salt and black pepper.', ARRAY ['3 pounds raw shrimp - peeled, deveined, and cut into small pieces', '1 white onion, finely chopped', '14 limes', '1 serrano chile pepper', '1 pound imitation crabmeat, shredded', '3 tomatoes, seeded and finely chopped', '1 chopped cucumber', '1/2 red onion, thinly sliced', '4 sliced jalapeno peppers', '1 bunch cilantro, chopped', '1/2 cup tomato and clam juice cocktail', 'salt and ground black pepper to taste'], ARRAY ['salt', 'pepper', 'shrimp', 'imitation crab', 'tomato juice cocktail', 'serrano pepper', 'jalapeno', 'lime', 'limes', 'onion', 'cucumber']),
('Greek potato salad', 'greeksalad.png', '1) Place red potatoes into a large pot and cover with salted water; bring to a boil. Reduce heat to medium-low and simmer until tender, about 25 minutes. Drain and chill in freezer until cold, about 30 minutes. 2) Slice potatoes and place into a large salad bowl; toss potatoes with green onion. Whisk olive oil, red wine vinegar, lemon juice, garlic powder, onion powder, salt, black pepper, oregano, sugar, rosemary, and red pepper in a bowl. Pour the dressing over the potatoes and toss. Serve immediately or chill until serving time.', ARRAY ['12 red potatoes', '1/4 cup chopped green onion', '1/4 cup olive oil', '1/4 cup red wine vinegar', '1 1/2 teaspoons fresh lemon juice ', '1/2 easpoon garlic powder', '1/2 teaspoon onion powder', 'coarse salt to taste', '1/4 teaspoon dried oregano', '1/4 teaspoon white sugar', '1/4 teaspoon dried rosemary, crumbled', '1 pinch ground red pepper'], ARRAY ['ground red pepper', 'dried rosemary', 'sugar', 'salt', 'red potatoes', 'potato', 'dried oregano', 'garlic powder', 'onion', 'olive oil', 'red wine vinegar']),
('ERROR!!!','error.png','Looks like Green Machine does not have a recipe that matches your input! Go back to home & try again!',ARRAY[''],ARRAY['']);

DROP TABLE IF EXISTS user_ingredients CASCADE;
CREATE TABLE IF NOT EXISTS user_ingredients(
  ingredient_name VARCHAR(15));

  

