import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var position = 0;
  var name = ["Ebisa", "Muna", "Lwum"];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State'),
        ),
        body: Column(
          children: [
            Text("My Name is ${name[position]}"),
            ElevatedButton(
                child: const Text('Change Name'),
                onPressed: () {
                  setState(() {
                    position++;
                  });
                })
          ],
        ),
      ),
    );
  }
}
