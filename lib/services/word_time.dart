/*
import 'package:http/http.dart';
import 'dart:convert';

class WordTime{
  String? location;
  String? time;
  String? flag;
  String? url;

  WordTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezon/$url'));
    Map timeData = jsonDecode(response.body);

    String dateTime = timeData['datetime'];
    String offset = timeData['utc_offset'];
    String offsetHours = offset.substring(1,3);
    String offsetMinutes = offset.substring(4,6);

    DateTime currentTime = DateTime.parse(dateTime);

    currentTime = currentTime.add(Duration(minutes: int.parse(offsetMinutes),hours: int.parse(offsetHours)));
    time = currentTime.toString();
  }
}
*/

import 'package:http/http.dart';
import 'dart:convert';

class WordTime{
  String? location;
  String? time;
  String? flag;
  String? url;

  WordTime({this.location, this.flag, this.url});


  Future<void> getTime() async{
    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezon/$url'));
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset'];
      String offsetHours = offset.substring(1,3);
      String offsetMinutes = offset.substring(4,6);

      DateTime currentTime = DateTime.parse(dateTime);
      currentTime = currentTime.add(Duration(minutes: int.parse(offsetMinutes),hours: int.parse(offsetHours)));
      time = currentTime.toString();
    }
    catch(e){
      print("Caught error: $e");

    }
  }
}


/*
import 'package:http/http.dart';
import 'dart:convert';

class WordTime{
  String? location;
  String? time;
  String? flag;
  String? url;

  WordTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset'];
      String offsetHours = offset.substring(1,3);
      String offsetMinutes = offset.substring(4,6);

      DateTime currentTime = DateTime.parse(dateTime);
      currentTime = currentTime.add(Duration(minutes: int.parse(offsetMinutes),hours: int.parse(offsetHours)));
      time = currentTime.toString();
    }
    catch(e){
      print("Caught error: $e");
      time = 'could not get time data';
    }
  }
}
*/


import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WordTime{
  String? location;
  String? time;
  String? flag;
  String? url;

  WordTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map timeData = jsonDecode(response.body);
      String dateTime = timeData['datetime'];
      String offset = timeData['utc_offset'];
      String offsetHours = offset.substring(1,3);
      String offsetMinutes = offset.substring(4,6);

      DateTime currentTime = DateTime.parse(dateTime);
      currentTime = currentTime.add(Duration(minutes: int.parse(offsetMinutes),hours: int.parse(offsetHours)));
      // time = currentTime.toString();
      time = DateFormat.jm().format(currentTime);
    }
    catch(e){
      print("Caught error: $e");
      time = 'could not get time data';
    }
  }
}
