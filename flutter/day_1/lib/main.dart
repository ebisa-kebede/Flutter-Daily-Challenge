import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Telegram'),
          leading: const Icon(Icons.menu),
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
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Icon(Icons.person),
                  width: 100,
                  height: 50,
                ),
                Column(
                  children: const [
                    Text(
                      "Ebisa Kebede",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text("hi ebba.........."),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Icon(Icons.person),
                  width: 100,
                  height: 50,
                ),
                Column(
                  children: const [
                    Text(
                      "Ebisa Kebede",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text("hi ebba.........."),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Icon(Icons.person),
                  width: 100,
                  height: 50,
                ),
                Column(
                  children: const [
                    Text(
                      "Ebisa Kebede",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text("hi ebba.........."),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
