import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'listview.dart';
import 'changer.dart';

class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      padding: const EdgeInsets.all(20.0),
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (String newValue) {
                newTaskTitle = newValue;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Provider.of<Data>(context,listen: false).addTasks(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text(
                'Add ',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
