DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users (
  first_name VARCHAR(30),                   /* first name                    */
  last_name VARCHAR(30),                 /* last name      */
  age SMALLINT NOT NULL,                /* age*/
  vegetarian SMALLINT NOT NULL,        /* 0 for YES, 1 for NO                          */
  vegan SMALLINT NOT NULL,             /* 0 for YES, 1 for NO     */
  halal  SMALLINT NOT NULL          /* 0 for YES, 1 for NO     */
);

DROP TABLE IF EXISTS ingredients CASCADE;
CREATE TABLE IF NOT EXISTS ingredients(
   
  name VARCHAR(50) NOT NULL,   
        
);

DROP TABLE IF EXISTS recipes CASCADE;
CREATE TABLE IF NOT EXISTS recipes(
  dish_name VARCHAR(30)     
  parts TEXT []
);

INSERT INTO users(first_name, last_name, age, vegetarian, vegan, halal)
VALUES('Bill', 'Nye', 55, 0, 1, 0),
('Queen', 'Elizabeth', 199, 0, 0, 1),
('Gordon', 'Ramsey', 20, 1, 1, 1)
;

INSERT INTO ingredients(name)
VALUES ('eggs'),('flour'),('butter'),('sugar'),('salt'),('pepper'),('baking powder'),
('milk'),('beef'),('pork'),('seafood'),('pasta'), ('parsley'),('onions'),('carrots'), ('potatos'),('vegatable oil'),
('garlic'),('lemon juice'), ('white wine'), ('cream'),('chili flakes'),('rice'),('soy sauce'), ('oyster sauce'),
('sesame oil');

INSERT INTO recipes(name, parts)
VALUES('Muffins', ARRAY[flour, baking powder, salt, sugar, eggs, milk, vegatable oil]),
('Seafood Pasta', ARRAY[seafood, garlic, lemon juice, white wine, cream, chili flakes, pasta]),
('Fried Rice', ARRAY[rice, soy sauce, oyster sauce, sesame oil, butter])
;

