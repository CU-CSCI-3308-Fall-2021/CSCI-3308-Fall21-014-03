/***********************
  Load Components!

  Express      - A Node.js Framework
  Body-Parser  - A tool to help use parse the data in a post request
  Pg-Promise   - A database tool to help use connect to our PostgreSQL database
***********************/
var express = require('express'); //Ensure our express framework has been added
var app = express();
var bodyParser = require('body-parser'); //Ensure our body-parser tool has been added
app.use(bodyParser.json());              // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies

//Create Database Connection
var pgp = require('pg-promise')();

/**********************
  Database Connection information
  host: This defines the ip address of the server hosting our database.
		We'll be using `db` as this is the name of the postgres container in our
		docker-compose.yml file. Docker will translate this into the actual ip of the
		container for us (i.e. can't be access via the Internet).
  port: This defines what port we can expect to communicate to our database.  We'll use 5432 to talk with PostgreSQL
  database: This is the name of our specific database.  From our previous lab,
		we created the football_db database, which holds our football data tables
  user: This should be left as postgres, the default user account created when PostgreSQL was installed
  password: This the password for accessing the database. We set this in the
		docker-compose.yml for now, usually that'd be in a seperate file so you're not pushing your credentials to GitHub :).
**********************/
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
	console.log(user_ingredients);
	db.any(user_ingredients)
		.then(function (rows) {
			res.render('recipes', {
				my_title: "Recipe Page",
				data: rows
			})
		})
		.catch(function (err) {
			console.log('error', err);
			res.render('recipes', {
				my_title: 'Recipe Page',
				data: ''
			})
		})
});





app.listen(3000);
console.log('3000 is the magic port');
