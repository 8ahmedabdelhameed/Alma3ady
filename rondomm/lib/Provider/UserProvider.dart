import 'package:flutter/cupertino.dart';
import 'package:rondomm/Model/UserRandomModel.dart';
import 'package:provider/provider.dart';
import 'package:rondomm/Service/UserService.dart';

class useprovider extends ChangeNotifier{
Usermodel? userdata;
bool isloding=true;


static useprovider getObject(context) =>
    Provider.of<useprovider>(context, listen: false);

Future<void> futureUser() async{
isloding=true;
notifyListeners();

userdata=await Usersrvice.futhrondom();//throw data from user to model

isloding=false;
notifyListeners();

}
}