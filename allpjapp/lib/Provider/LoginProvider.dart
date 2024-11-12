import 'package:allpjapp/Model/LoginModel.dart';
import 'package:allpjapp/Service/LoginService.dart';
import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier
{
  LoginModel? loginModel;
  String loginmessage = "";
  checkuser(String email,String password) async
  {
    LoginModel loginModel = LoginModel(email: email, password: password);
loginmessage = await LoginService.PostData(loginModel);
   notifyListeners();
  }
}