import 'package:flutter/material.dart';
import 'package:untitled/style_1/style_1.dart';
import 'package:untitled/style_2/style_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Before After Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Before After Widget Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final imgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4IkRU-sN-SSQohf8R1UlfkZS4TFoPeXVgkw&s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Style1(imgUrl: imgUrl),
            Style2(imgUrl: imgUrl, initialValue: 5,),
          ],
        ),
      ),
    );
  }
}
