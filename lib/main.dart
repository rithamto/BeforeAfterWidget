import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.green, BlendMode.hardLight),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4IkRU-sN-SSQohf8R1UlfkZS4TFoPeXVgkw&s",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 300,
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4IkRU-sN-SSQohf8R1UlfkZS4TFoPeXVgkw&s",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 165,
                    width: 4,
                    color: Colors.red,
                  ),
                  Opacity(
                    opacity: 0,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4IkRU-sN-SSQohf8R1UlfkZS4TFoPeXVgkw&s",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
