import 'package:estimation_game/main.dart';
import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  const Final({super.key});

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
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
                  "KAZANDINIZ",
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
                child: Image.asset("images/smile.jpg"),
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
