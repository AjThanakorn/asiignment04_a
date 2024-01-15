import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BMIController extends GetxController{
  RxInt myWeight=50.obs;
  RxInt myHeight=160.obs;
  RxDouble bmi=0.0.obs;
  final heightTextField=TextEditingController();
  final weightTextField=TextEditingController();

  void incrementHeight(){
    myHeight.value++;
    heightTextField.text=myHeight.value.toString();
  }
  void decrementHeight(){
    myHeight.value--;
    heightTextField.text=myHeight.value.toString();
  }
  void incrementWeight(){
    myWeight.value++;
    weightTextField.text=myWeight.value.toString();
  }
  void decrementWeight(){
    myWeight.value--;
    weightTextField.text=myWeight.value.toString();
  }
  void bmiCalculator(){
    bmi.value=myWeight/((myHeight/100)*(myHeight/100));
  }
}