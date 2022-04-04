import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'detail.dart';

class HomePage extends StatelessWidget {
  fetchMovies() async {
    var url;
    url = await http.get(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=1500496dcaf1512b62894bd98ba83f9d&language=en-US");
    return json.decode(url.body)['results'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff191826),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Movies App',
          style: TextStyle(fontSize: 25.0, color: Color(0xfff43370)),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xff191826),
      ),
      body: FutureBuilder(
          future: fetchMovies(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error),
              );
            }
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                padding: EdgeInsets.all(10),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff191826),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              "https://image.tmdb.org/t/p/w500" +
                                  snapshot.data[index]['poster_path'],
                              height: 150.0,
                              width: 100.0,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    snapshot.data[index]["original_title"],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    snapshot.data[index]["release_date"],
                                    style: TextStyle(color: Color(0xff868597)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      snapshot.data[index]["overview"],
                                      style:
                                          TextStyle(color: Color(0xff868597)),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => UserPage(
                        position: index,
                        urlimage: "https://image.tmdb.org/t/p/w500" +
                            snapshot.data[index]['poster_path'].toString(),
                        title: snapshot.data[index]["original_title"],
                      ),
                    )),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
