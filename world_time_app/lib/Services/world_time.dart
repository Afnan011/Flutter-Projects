import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? time; //actual time
  String? location; //display location
  String? flag; //flag location
  String? urlEndPoint; //api url
  bool isDay = false;

  WorldTime({this.location, this.flag, this.urlEndPoint});

  Future<void> getTime() async {

    try{
      //get time
      Uri url = Uri.parse("http://worldtimeapi.org/api/timezone/$urlEndPoint");
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      // print(data);

      String dateTime = data['utc_datetime'];
      String offset = data['utc_offset'];

      String offsetHour = offset.toString().substring(1, 3);
      String offsetMin = offset.toString().substring(4, 6);
      // print("Time = $offsetHour : $offsetMin");

      //Convert to DateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(
          Duration(
              hours: int.parse(offsetHour),
              minutes: int.parse(offsetMin)
          ));

      isDay = now.hour > 6 && now.hour<19 ? true : false;

      time = DateFormat.jm().format(now);
      print(time);
    }
    catch(e){
      print(e);
    }

  }
}
