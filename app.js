//---- NPM PACKAGES MODULES 
const app = require('express')();
const bodyParser = require('body-parser');
const cors = require('cors'); 

//---- PATH ROUTER MODULES 
const {movieRoutes} = require('./routes/movies');


//---- MIDDLEWARE 
app.use(cors());
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json())


app.use('/movies', movieRoutes);


module.exports = {app}