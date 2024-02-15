import 'package:estimation_game/main.dart';
import 'package:flutter/material.dart';

class BadFinal extends StatefulWidget {
  const BadFinal({super.key});

  @override
  State<BadFinal> createState() => _BadFinalState();
}

class _BadFinalState extends State<BadFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("FİNAL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(children: [
                Text(
                  "YOU LOSE",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 55,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("images/sad.png"),
              ),
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text(
                    "TEKRAR DENE",
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
