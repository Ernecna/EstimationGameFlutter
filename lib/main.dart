import 'package:estimation_game/Estimate.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Estimation Game"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(children: [
                Text(
                  "ESTİMATİON "
                  "GAME",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("images/dice.png"),
              ),
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Estimate()));
                  },
                  child: Text(
                    "START THE GAME",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
