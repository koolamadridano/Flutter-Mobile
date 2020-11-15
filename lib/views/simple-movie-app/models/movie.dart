import 'package:meta/meta.dart';

class Movie {
  static List<Movie> getMovies() => [
        Movie(
          title: "Avatar",
          year: "2009",
          rated: "PG-13",
          released: "18 Dec 2009",
          runtime: "162 min",
          genre: ["Action", "Adventure", "Fantasy"],
          director: "James Cameron",
          writer: "James Cameron",
          actors: [
            "Sam Worthington",
            "Zoe Saldana",
            "Sigourney Weaver",
            "Stephen Lang"
          ],
          plot:
              "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
          language: "English, Spanish",
          country: "USA, UK",
          awards: "Won 3 Oscars. Another 80 wins & 121 nominations.",
          poster:
              "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg",
          metascore: "83",
          idmbRating: "7.9",
          idmbVotes: "890,617",
          idmbId: "tt0499549",
          type: "movie",
          respose: "True",
          images: [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
          ],
        ),
        Movie(
          title: "I Am Legend",
          year: "2007",
          rated: "PG-13",
          released: "14 Dec 2007",
          runtime: "101 min",
          genre: ["Drama", "Horror", "Sci-Fi"],
          director: "Francis Lawrence",
          writer:
              "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
          actors: [
            "Will Smith",
            "Alice Braga",
            "Charlie Tahan",
            "Salli Richardson-Whitfield"
          ],
          plot:
              "Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.",
          language: "English",
          country: "USA",
          awards: "W9 wins & 21 nominations.",
          poster:
              "http://ia.media-imdb.com/images/M/MV5BMTU4NzMyNDk1OV5BMl5BanBnXkFtZTcwOTEwMzU1MQ@@._V1_SX300.jpg",
          metascore: "65",
          idmbRating: "7.2",
          idmbVotes: "533,874",
          idmbId: "tt0480249",
          type: "movie",
          respose: "True",
          images: [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
          ],
        ),
        Movie(
          title: "300",
          year: "2006",
          rated: "R",
          released: "09 Mar 2007",
          runtime: "117 min",
          genre: ["Drama", "Drama", "Fantasy"],
          director: "Zack Snyder",
          writer:
              "Zack Snyder (screenplay), Kurt Johnstad (screenplay), Michael Gordon (screenplay), Frank Miller (graphic novel), Lynn Varley (graphic novel)",
          actors: [
            "Gerard Butler",
            "Lena Headey",
            "Dominic West",
            "David Wenham"
          ],
          plot:
              "King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C.",
          language: "English",
          country: "USA",
          awards: "16 wins & 42 nominations.",
          poster:
              "http://ia.media-imdb.com/images/M/MV5BMjAzNTkzNjcxNl5BMl5BanBnXkFtZTYwNDA4NjE3._V1_SX300.jpg",
          metascore: "52",
          idmbRating: "7.7",
          idmbVotes: "611,046",
          idmbId: "tt0416449",
          type: "movie",
          respose: "True",
          images: [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMwNTg5MzMwMV5BMl5BanBnXkFtZTcwMzA2NTIyMw@@._V1_SX1777_CR0,0,1777,937_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwNTgyNTMzNF5BMl5BanBnXkFtZTcwNDA2NTIyMw@@._V1_SX1777_CR0,0,1777,935_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0MjQzOTEwMV5BMl5BanBnXkFtZTcwMzE2NTIyMw@@._V1_SX1777_CR0,0,1777,947_AL_.jpg"
          ],
        ),
        Movie(
          title: "The Avengers",
          year: "2012",
          rated: "PG-13",
          released: "04 May 2012",
          runtime: "143 min",
          genre: ["Action", "Sci-Fi", "Thriller"],
          director: "Joss Whedon",
          writer:
              "Joss Whedon (screenplay), Zak Penn (story), Joss Whedon (story)",
          actors: [
            "Robert Downey Jr.",
            "Chris Evans",
            "Mark Ruffalo",
            "Chris Hemsworth"
          ],
          plot:
              "Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.",
          language: "English, Russian",
          country: "USA",
          awards: "Nominated for 1 Oscar. Another 34 wins & 75 nominations.",
          poster:
              "http://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_SX300.jpg",
          metascore: "69",
          idmbRating: "8.1",
          idmbVotes: "1,003,301",
          idmbId: "tt0416449",
          type: "movie",
          respose: "True",
          images: [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0NjY0NzE4OTReQTJeQWpwZ15BbWU3MDczODg2Nzc@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE1MzEzMjcyM15BMl5BanBnXkFtZTcwNDM4ODY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMjMwMzM2MTg1M15BMl5BanBnXkFtZTcwNjM4ODY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ4NzM2Mjc5MV5BMl5BanBnXkFtZTcwMTkwOTY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc3MzQ3NjA5N15BMl5BanBnXkFtZTcwMzY5OTY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg"
          ],
        ),
      ];

  String title;
  String year;
  String rated;
  String released;
  String runtime;
  List<String> genre;
  String director;
  String writer;
  List<String> actors;
  String plot;
  String language;
  String country;
  String awards;
  String poster;
  String metascore;
  String idmbRating;
  String idmbVotes;
  String idmbId;
  String type;
  String respose;
  List<String> images;

  Movie({
    @required this.title,
    @required this.year,
    @required this.rated,
    @required this.released,
    @required this.runtime,
    @required this.genre,
    @required this.director,
    @required this.writer,
    @required this.actors,
    @required this.plot,
    @required this.language,
    @required this.country,
    @required this.awards,
    @required this.poster,
    @required this.metascore,
    @required this.idmbRating,
    @required this.idmbVotes,
    @required this.idmbId,
    @required this.type,
    @required this.respose,
    @required this.images,
  });
}
