import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Provider/ToDoProvider.dart';
import 'package:todo/Screens/CustomWidget.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ToDoProvider>(builder: (context, duck, child) {
        if(duck.toDoModel==null)
          {
            duck.fetchuser();
            return Center(child: CircularProgressIndicator());
          }
        else {
          var mytodos = duck.toDoModel?.todos;
          return Card(
            color: Colors.red,

            child: ListView.builder(
              itemCount: mytodos?.length,
              itemBuilder:(context, index) {
                     return Customwidget(todo: mytodos?[index].todo??'');
            },
            ),
          );
        }
      },),

    );
  }
}
