class TravelModel {
  String destination="";
  String city="";
  String description="";


  TravelModel(this.destination, this.city, this.description);

}
class TravelList{
  List<TravelModel> travelList=[];
  addTravelList(TravelModel t){
    travelList.add(t);
  }
}