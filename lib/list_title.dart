import 'package:flutter/material.dart';


class ListTitle extends StatelessWidget{
  bool isChecked = false;
  final String taskName;
  final Function(bool?) onChanged;
  final void Function()? onLongPress;

  ListTitle(this.isChecked, this.taskName,this.onChanged,this.onLongPress);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskName,
        style:
            TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:onChanged,
      ),
    );
  }
}


