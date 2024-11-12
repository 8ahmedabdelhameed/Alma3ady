import 'package:allpjapp/Provider/LoginProvider.dart';
import 'package:allpjapp/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loginpagescreen extends StatelessWidget {
  Loginpagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _email =  new TextEditingController();
    TextEditingController _password =  new TextEditingController();
    return Scaffold(
      body: Form(
        key: _formkey,
          child: Padding(padding: const EdgeInsets.all(30)
          ,child: Column(
              children: [
                TextFormField(
                  controller: _email,
                  validator: (value) {
                    if(value ==null || value.isEmpty)
                      {
                        return "Please enter email";
                      }
                    else if(!value.contains('@'))
                    {
                      return "enter a valid email";
                    }
                    return null;
                },),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  validator: (value) {
                    if(value ==null || value.isEmpty)
                    {
                      return "Please enter password";
                    }
                    else if(value.length<3)
                      {
                        return "password must be more tham 3 chars";
                      }
                    return null;
                  },),
                TextButton(onPressed: ()
                    async {
                      if(_formkey.currentState!.validate())
                        {
                          var provider = Provider.of<LoginProvider>(context,listen: false);
                           await provider.checkuser(_email.text, _password.text);
                          if(provider.loginmessage.contains('success'))
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Homescreen()),
                              );
                            }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(provider.loginmessage)));
                          }
                        }
                    }, child: Text("Login"))

              ],







            ),)

      ),
    );
  }
}
