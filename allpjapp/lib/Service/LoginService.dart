import 'dart:math';

import 'package:allpjapp/Model/LoginModel.dart';
import 'package:dio/dio.dart';

class LoginService
{
 static Dio dio = Dio();
static Future<String> PostData(LoginModel loginmodel) async
 {
   try {
     String url = "https://reqres.in/api/login";
     Response response = await dio.post(url,
         data:loginmodel.ToJson()
     );
     if (response.statusCode == 200) {
       return "success";
     }
     else {
       return "failed";
     }
   } catch(e)
   {
     throw Exception("failed");
   }
 }
}