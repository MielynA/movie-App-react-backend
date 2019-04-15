const { app} = require('./app'); 


//---- RUNNING ENVI SERVER PORT 
app.listen(process.env.PORT || 5002)
console.log('port:',process.env.PORT || 5002 ,'is listening..'); 