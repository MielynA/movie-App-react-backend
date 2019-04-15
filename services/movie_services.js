const db = require('../db/database');

movieService = {}


movieService.getAll = () => {
    return db.any('SELECT * FROM Movies');
}

movieService.getInfoComment = (movie_id) => {
    // return db.any('SELECT Comments.* FROM Comments JOIN Movies ON ${movie_id} = Movies.id WHERE Comments.movie_id = ${movie_id}' , {movie_id})
    return db.any("SELECT Comments.text AS comment,Movies.*  FROM Movies JOIN Comments ON ${movie_id} = Comments.movie_id WHERE Movies.id = ${movie_id}", {movie_id})
}

movieService.getGenre = (genre_id) => {
    return db.any('SELECT Genres.name, Movies.*  FROM Movies JOIN Genres ON ${genre_id} = Genres.id WHERE Movies.genre_id = ${genre_id}', {genre_id}
    )
}

movieService.getRatings = (movie_id,) => {
    return db.any('SELECT Ratings.stars, Movies.title, Movies.img_url FROM Movies JOIN Ratings ON Movies.id = ${movie_id} WHERE Ratings.movie_id =  ${movie_id}', {movie_id})
}




module.exports = movieService; 