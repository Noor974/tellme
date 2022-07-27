import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(TellApp());
}

class TellApp extends StatefulWidget {
  const TellApp({Key? key}) : super(key: key);

  @override
  State<TellApp> createState() => _TellAppState();
}

class _TellAppState extends State<TellApp> {
  int tell = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('Ask me anything'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(children: [
            Expanded(
              child: MaterialButton(
                  onPressed: (() {
                    setState(() {
                      tell = Random().nextInt(5) + 1;
                    });
                  }),
                  child: Image.asset('images/ball$tell.png')),
            ),
          ]),
        ),
      ),
    );
  }
}
