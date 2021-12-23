import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Telegram"),
          backgroundColor: Colors.lightBlue,
          leading: const Icon(
            Icons.menu,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              ),
            )
          ],
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 1,
          childAspectRatio: 3 / 0.5,

          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/test.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ebisa Kebede"),
                      Text("Ebisa Kebede"),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.edit),
        ),
      ),
    );
  }
}
