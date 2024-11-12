import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rondomm/Widget/UserWidget.dart';
import 'package:rondomm/Model/UserRandomModel.dart';
class Usersrvice{
static final Dio dio=Dio();
static Future<Usermodel> futhrondom() async{

try{
Response response=await dio.get('https://randomuser.me/api/?results=5');
return Usermodel.fromjson(response.data);
}
catch(e){
throw Exception('Error fetching users: $e');
}
}
}