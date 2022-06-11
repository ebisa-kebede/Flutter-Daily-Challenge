//Detail Fragment
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Username'),
          backgroundColor: Color(0xff55879F),
          leading: Icon(Icons.arrow_back),
          actions: const [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: Row(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.face),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ebisa kebede',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
