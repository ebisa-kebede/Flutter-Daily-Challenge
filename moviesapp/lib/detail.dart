import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserPage extends StatelessWidget {
  final int position;
  final String urlimage;
  final String title;
  final String rate;
  final String overview;

  fetchMovies() async {
    var url;
    url = await http.get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=1500496dcaf1512b62894bd98ba83f9d&language=en-US");
    return json.decode(url.body)['results'];
  }

  const UserPage(
      {Key key,
      @required this.position,
      @required this.urlimage,
      @required this.title,
      @required this.rate,
      @required this.overview})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xff191826),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                floating: false,
                pinned: true,
                backgroundColor: Color(0xff191826),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    background: Image.network(
                      urlimage,
                      fit: BoxFit.cover,
                    )),
                bottom: PreferredSize(
                  child: Text(
                    "Rate: $rate/10 ",
                    style: TextStyle(color: Colors.white),
                  ),
                  preferredSize: Size.fromHeight(0),
                ),
              ),
            ];
          },
          body: FutureBuilder(
            future: fetchMovies(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error),
                );
              }

              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const SizedBox(height: 5),
                    Text(
                      overview,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                      ),
                    ),
                  ],
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      );
}
