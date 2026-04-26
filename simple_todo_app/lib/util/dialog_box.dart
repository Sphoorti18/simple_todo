import 'package:flutter/material.dart';
import 'package:simple_todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller,
  required this.onSave,
  required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromRGBO(99, 230, 226, 1.0),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Usr input
            TextField(
              cursorColor: Color.fromRGBO(12, 129, 123, 1.0),
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(12, 129, 123, 1.0), width: 2.0,)
                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(12, 129, 123, 1.0), width: 2.0,)),
                hintText: "Add a new task",
                hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0))
              ),
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0))
            ),
            //buttons: save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 5.0,
              children: 
              [
                //save button
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width:8),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
