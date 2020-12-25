import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:geolocator/geolocator.dart';


import 'counter.dart';



class CounterService {
   

  String _currentAddress;
  factory CounterService.instance() => _instance;

  CounterService._internal();

  static final _instance = CounterService._internal();

  //final _counter = Counter();

  //ValueListenable<int> get count => _counter.count;

  void startCounting() {
    Stream.periodic(Duration(seconds: 2)).listen((_) {
//dene();
    });
  }
}


dene(){

print("hande");


}



Future<void> createAlbum(String position) async {
  final http.Response response = await http.post(
    'http://integration.forapps.com.tr/veri/kayit',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': position,
    }),
  );


if(response.statusCode==200){
  print("basarılı");

Fluttertoast.showToast(
        msg: "post basarılı"+position.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 10,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );


}else{

Fluttertoast.showToast(
        msg: "!! post basarısız",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 10,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );


}


}


void _getCurrentLocation() async {

    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  print(position);

//createAlbum(position.toString());


  }
  void dene23(){
print("hilda");


  }