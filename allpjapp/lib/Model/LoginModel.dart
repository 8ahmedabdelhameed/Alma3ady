import 'package:flutter/material.dart';
class LoginModel
{
final String email ;
final String password;
LoginModel({required this.email,required this.password});
Map<String, String>  ToJson()
{
  return {'email': email, 'password' : password};
}
}