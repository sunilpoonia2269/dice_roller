import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImageOne;
  AssetImage diceImageTwo;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImageOne = one;
      diceImageTwo = one;
    });
  }

  void rollDice() {
    int randomDiceOne = (1 + Random().nextInt(6));
    int randomDiceTwo = (1 + Random().nextInt(6));
    AssetImage newImageOne;
    AssetImage newImageTwo;

    switch (randomDiceOne) {
      case 1:
        newImageOne = one;
        break;
      case 2:
        newImageOne = two;
        break;
      case 3:
        newImageOne = three;
        break;
      case 4:
        newImageOne = four;
        break;
      case 5:
        newImageOne = five;
        break;
      case 6:
        newImageOne = six;
        break;
    }
    switch (randomDiceTwo) {
      case 1:
        newImageTwo = one;
        break;
      case 2:
        newImageTwo = two;
        break;
      case 3:
        newImageTwo = three;
        break;
      case 4:
        newImageTwo = four;
        break;
      case 5:
        newImageTwo = five;
        break;
      case 6:
        newImageTwo = six;
        break;
    }

    setState(() {
      diceImageOne = newImageOne;
      diceImageTwo = newImageTwo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dice Roller",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
          ),
          // color: Color(0xFF509186),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: diceImageOne,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Image(
                    image: diceImageTwo,
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  child: Text(
                    "Roll Dice!",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  onPressed: () {
                    rollDice();
                  },
                  color: Color(0xFF7979e8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
