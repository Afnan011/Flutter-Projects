import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {


  String? name;

  void getData() async {

    String name = await Future.delayed(const Duration(seconds: 3), (){
      return "Afnan";
    });

    String bio = await Future.delayed(const Duration(seconds: 2), (){
       return "Biography";
    });

    print("$name -> $bio");

  }

  @override
  void initState() {
    super.initState();
    getData();
    print("init state");
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Choose Location"),
          elevation: 0,
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        body:  const Text('clicked'),
      ),
    );
  }
}


