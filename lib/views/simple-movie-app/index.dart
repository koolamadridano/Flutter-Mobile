import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterMobile/views/simple-movie-app/models/movie.dart';

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  final List<Movie> movies = Movie.getMovies();

  _removeMovie(int index) {
    final snackbar = SnackBar(
      content: Text("${movies[index].title} removed successfully!"),
      backgroundColor: Colors.green,
      duration: Duration(milliseconds: 500),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);

    setState(() {
      print("${movies[index].title} was removed ");
      movies.removeAt(index);
    });
  }

  _viewMovie(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => MovieToggleDetails(
                movieName: movies[index].title,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MOVIEHEART",
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.blueGrey.shade900,
        actions: [],
        shadowColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade800,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) => Card(
          elevation: 5.0,
          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
          color: Colors.blueGrey.shade900,
          child: ListTile(
            onTap: () => _viewMovie(index),
            trailing: IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () => _removeMovie(index)),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.deepOrange,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  image: DecorationImage(
                    image: NetworkImage(movies[index].images[0]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
            ),
            title: Text(
              movies[index].title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              movies[index].released,
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
      ),
    );
  }
}

class MovieToggleDetails extends StatelessWidget {
  final String movieName;

  const MovieToggleDetails({Key key, this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          movieName,
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.blueGrey.shade900,
        actions: [],
        shadowColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        child: RaisedButton(
          child: Text("Go back"),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
    ;
  }
}
