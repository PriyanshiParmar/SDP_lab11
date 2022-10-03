import 'package:flutter/material.dart';
import 'package:lab11_1/pages/home.dart';
import 'package:lab11_1/pages/loading.dart';
import 'package:lab11_1/pages/choose_location.dart';
// import 'package:http/http.dart';

void main() => runApp(MaterialApp(
  // home: Home(),

  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));