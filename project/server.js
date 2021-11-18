
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
app.use(bodyParser.json());              
app.use(bodyParser.urlencoded({ extended: true })); 
var pgp = require('pg-promise')();

const dbConfig = {
	host: 'db',
	port: 5432,
	database: 'green_db',
	user: 'postgres',
	password: 'pwd'
};

var db = pgp(dbConfig);

// set the view engine to ejs
app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/'));//This line is necessary for us to use relative paths and access our resources directory


app.get('/', function(req, res) {
	res.render('landing',{
		my_title:"Welcome Page"
	});
});


app.get('/home', function(req, res) {
	res.render('gmh',{
		my_title: "Homepage",
		data: ''
	});
});

// add ingredients to user_ingredients table
// display table as things are added
app.post('/home/add_ingredient', function(req, res) {
	var ingredient = req.body.ingredient;
	var insert_statement = `insert into user_ingredients (ingredient_name) VALUES ('${ingredient}');`;
	var ingredient_select = 'select * from user_ingredients;';
	db.task('get-everything', task => {
		return task.batch([
			task.any(insert_statement),
			task.any(ingredient_select)
		]);
	})
	.then(info => {
		console.log("INFO:", info[1]);
		res.render('gmh',{
			my_title: "Home Page",
			data: info[1]
		})
	})
	.catch(err => { 
		console.log('error', err);
		res.render('gmh', {
			my_title: 'Home Page',
			data: ''
		})
	});
});

// drop the user ingredient table
// render the home page with no user table saved
app.post('/home/clear_ingredients', function(req, res) {
	var delete_statement = `TRUNCATE TABLE user_ingredients;`;
	db.task('get-everything', task => {
		return task.batch([
			task.any(delete_statement),
		]);
	})
	.then(info => {
		res.render('gmh',{
			my_title: "Home Page",
			data: info[1]
		})
	})
	.catch(err => {
		console.log('error', err);
		res.render('gmh', {
			my_title: 'Home Page',
			data: ''
		})
	});
});

// get ingredients from user_ingredients table
// render the corresponding recipe
app.get('/recipes', function(req, res) {
	var deleteTable = 'DROP TABLE user_ingredients';
	var user_ingredients = 'select * from user_ingredients;';
	var all_recipes = 'select * from recipes;';
	db.task('get-everything', task => {
		return task.batch([
			task.any(user_ingredients),
			task.any(all_recipes)
		]);
	})
	.then(info => {
		res.render('recipes', {
			my_title: "Recipe Page",
			ingredients: info[0],
			recipes: info[1]
		})
	})
	.catch(function (err) {
		console.log('error', err);
		res.render('recipes', {
			my_title: "Recipe Page",
			ingredients: '',
			recipes: ''
		})
	})
});

app.listen(3000);
console.log('3000 is the magic port');
