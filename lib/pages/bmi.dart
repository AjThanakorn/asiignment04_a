import 'dart:html';

import 'package:asiignment04_a/controller/bmi_controller.dart';
import 'package:asiignment04_a/pages/travel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BMIPage extends StatelessWidget {
   BMIPage({super.key});
  final myController=Get.put(BMIController());
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
                      onPressed: () {
                        myController.decrementHeight();
                      }, child: Icon(FontAwesomeIcons.minus)),
                  Container(
                      width: 60,
                      child: TextField(
                        controller: myController.heightTextField,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        myController.incrementHeight();
                      }, child: Icon(FontAwesomeIcons.plus)),
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
                        myController.decrementWeight();
                      }, child: Icon(FontAwesomeIcons.minus)),

                  Container(
                      width: 60,
                      child: TextField(
                        controller: myController.weightTextField,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        myController.incrementWeight();
                      }, child: Icon(FontAwesomeIcons.plus)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
                myController.bmiCalculator();
            }, child: Text("Calculate")),

            Obx(() => Text("Your BMI= ${myController.bmi}") ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if(value==2){
            Get.to(TravelPage());
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.weightScale),label:"BMI"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.temperatureQuarter),label: "Temp"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.planeArrival),label: "Teavel"),
        ],
      ),
    );
  }
}
