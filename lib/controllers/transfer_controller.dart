import 'package:get/get.dart';

class transferController extends GetxController{
  List profile = ["pic1.jpg","profile.jpg","airbnb.png"];
  List time = ["12:28 PM", "11:27 AM", "09:48 AM"];
  List price = ["+\$980", "+\$400", "-\$99.99"];
  List mode = ["Transfer", "Payment", "Payment"];
  List name = ["Henky Hawkins", "Lara Collins", "Airbnb"];
  List<Map> second = [{
    "image":"profile.jpg",
    "time" : "01:58 PM",
    "price" : "-\$20.44",
    "mode" : "payment",
    "name" : "Uber Eats",
  },{
    "image":"pic1.jpg",
    "time" : "02:48 PM",
    "price" : "-\$420",
    "mode" : "Purchase",
    "name" : "Pegasus Airlines",
  },
  {
    "image":"pic2.jpg",
    "time" : "03:38 PM",
    "price" : "+\$330",
    "mode" : "Transfer",
    "name" : "Henry Hawkins",
  }];
}