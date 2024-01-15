import 'package:get/get.dart';

class TravelController extends GetxController{
  RxList<String> travelList =<String>["Hello","Hello2","Hello3"].obs;

  void addTravelList(){
    travelList.add("hello");
  }
}