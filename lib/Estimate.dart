import 'dart:math';

import 'package:estimation_game/BadFinal.dart';
import 'package:estimation_game/Final.dart';
import 'package:flutter/material.dart';

class Estimate extends StatefulWidget {
  const Estimate({super.key});

  @override
  State<Estimate> createState() => _EstimateState();
}

class _EstimateState extends State<Estimate> {
  String inc = "UP";
  String down = "DOWN";
  String change = "";
  var tfcontroller = TextEditingController();
  int truenumber = 5;
  int chance = 3;
  int mychance = 3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    truenumber = Random().nextInt(101);
    print("True number AAAAAAAAAAAAAAAAAA $truenumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Estimation Screen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "REMAİNİNG  $mychance CHANCE TO GUESS",
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          Text("HELPER : $change",
              style: TextStyle(color: Colors.grey, fontSize: 20)),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                controller: tfcontroller,
                decoration: InputDecoration(
                    labelText: "Estimation",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)))),
              )),
          SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // ignore: unnecessary_null_comparison
                  if (tfcontroller.text.isEmpty) {
                    change = "DONT WRİTE SPACE";
                  } else {
                    setState(() {
                      mychance = mychance - 1;
                    });
                    int tahmin = int.parse(tfcontroller.text);
                    if (tahmin == truenumber) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Final()));
                      return;
                    } else {
                      if (tahmin > truenumber) {
                        change = down;
                      } else {
                        change = inc;
                      }
                      if (mychance == 0) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BadFinal()));
                      }
                    }
                  }
                },
                child: Text("ENTER ESTİMATİON",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shadowColor: Colors.black,
                  elevation: 10,
                ),
              ))
        ],
      )),
    );
  }
}
