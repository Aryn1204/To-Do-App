import 'package:flutter/material.dart';
import 'list_title.dart';
import 'tasks.dart';
import 'package:provider/provider.dart';
import 'changer.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder:(context,index){return ListTitle(
            taskData.tasks[index].isDone,
            taskData.tasks[index].task,(checkboxState){
          taskData.change(taskData.tasks[index]);
        },(){
            taskData.deleteTasks(taskData.tasks[index]);
        });},
          itemCount: taskData.tasks.length,
        );
      },
    );
    }
  }



