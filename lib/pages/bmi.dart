import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BMIPage extends StatelessWidget {
  const BMIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.android),
        title: Text(
          "BMI Calculator",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Bmi Calculator Page",
                style: TextStyle(color: Colors.redAccent, fontSize: 25)),
            SizedBox(
              height: 15,
            ),
            Text("Height",
                style: TextStyle(color: Colors.blueGrey, fontSize: 18)),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Icon(FontAwesomeIcons.minus)),
                  Container(
                      width: 60,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      )),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(FontAwesomeIcons.plus)),
                ],
              ),
            ),SizedBox(
              height: 15,
            ),
            Text("Weight",
                style: TextStyle(color: Colors.blueGrey, fontSize: 18)),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {

                      }, child: Icon(FontAwesomeIcons.minus)),

                  Container(
                      width: 60,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      )),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(FontAwesomeIcons.plus)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {

            }, child: Text("Calculate"))
          ],
        ),
      ),
    );
  }
}
