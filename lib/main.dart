import 'package:asiignment04_a/pages/bmi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)),
    home: WelcomePage() ,
  ));
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            SizedBox(height: 20,),
            Text("Welcome",style: TextStyle(
              fontSize: 30,
              color: Colors.red
            ) ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Get.offAll(BMIPage());
            }, child: Text("Get Started"))
          ],
        ),
      ),
    );
  }
}


