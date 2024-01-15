import 'package:asiignment04_a/controller/travel_controller.dart';
import 'package:asiignment04_a/pages/bmi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TravelPage extends StatelessWidget {
  TravelPage({super.key});
  final travelController=Get.put(TravelController());
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
            Text("Travel List Page",
                style: TextStyle(color: Colors.redAccent, fontSize: 25)),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Destination::"),
                      Container(width: 100, child: TextField()),
                      Text("City::"),
                      Container(width: 100, child: TextField()),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Description::"),
                      Container(width: 200, child: TextField()),
                    ],
                  )
                  ,ElevatedButton(onPressed: (){
                    travelController.addTravelList();
                  }, child: Text("Add")),



                ],
              ),
            ),
            Expanded(
                child:
                    Obx(() => ListView.builder(
                      itemCount: travelController.travelList.length,
                      itemBuilder: (context, index) {
                        return Card(
margin: EdgeInsets.all(10),
                        child: Container(
                          alignment: Alignment.center,
                            height: 50,child: Text(" ${travelController.travelList[index] }")));
                      },))

            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (value) {
          if (value == 0) {
            Get.to(BMIPage());
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.weightScale), label: "BMI"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.temperatureQuarter), label: "Temp"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.planeArrival), label: "Teavel"),
        ],
      ),
    );
  }
}
