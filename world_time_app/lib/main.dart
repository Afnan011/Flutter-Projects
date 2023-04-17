import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/home.dart';
import 'package:world_time_app/Pages/loading.dart';
import 'package:world_time_app/Pages/select_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const SelectLocation()
    },
  ));
}
