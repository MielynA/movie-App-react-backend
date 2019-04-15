const app = require('express').Router(); 
const movieService = require('../services/movie_services'); 

//--- READ/GET MOVIE INFO
app.get('/', (req,res)=> {
   movieService.getAll().then((newMovie) => {
     res.json({msg: 'Here are the list of all movies', newMovie})
     
   })
   .catch(err=> {
       res.status(404).json({msg: err.toString()})
   })
})

//--- READ/GET ALL INFO AND COMMENT FOR A SPECIFIC MOVIE

app.get('/:movie_id/comments/', (req,res)=> {
    const {movie_id} = req.params;
   movieService.getInfoComment(movie_id).then((newInfoComment)=> {
       res.json({msg: newInfoComment})
   })
   .catch(err=> {
       res.status(404).json({msg: err.toString()})
   })
})


//--- READ/GET ALL MOVIES THAT HAS CERTAIN GENRE
app.get('/:genre_id/genre', (req,res)=>{
  const{genre_id} = req.params;
  movieService.getGenre(genre_id).then((newGenre) => {
      res.json({msg: newGenre})
  })
  .catch(err => {
      res.status(404).json({msg: err.toString()})
  })
})

//--- READ/GET ALL MOVIES AND RATINGS 
app.get('/:movie_id/ratings/', (req,res)=> {
   const {movie_id} = req.params; 
   movieService.getRatings(movie_id).then((newRatings)=>{
       res.json({msg: newRatings})
   })
   .catch(err => {
       res.status(404).json({msg: err.toString()})
   })
})
module.exports = { movieRoutes: app, }