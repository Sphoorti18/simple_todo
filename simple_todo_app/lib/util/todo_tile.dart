import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Color.fromRGBO(255, 59, 48, 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Color.fromRGBO(12, 129, 123, 1.0),
                side: BorderSide(
                  color: Color.fromRGBO(12, 129, 123, 1.0),
                  width: 2.0,
                ),
              ),

              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  decorationColor: Color.fromRGBO(12, 129, 123, 1.0),
                  decorationThickness: 2.0,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(99, 230, 226, 1.0),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
