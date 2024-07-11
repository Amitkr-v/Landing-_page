import 'package:flutter/material.dart';

class Dialogue extends StatefulWidget {
  @override
  _DialogueState createState() => _DialogueState();
}

class _DialogueState extends State<Dialogue> {
  bool isDeleteHovered = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) {
                setState(() {
                  isDeleteHovered = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isDeleteHovered = false;
                });
              },
              child: GestureDetector(
                onTap: () {
                  // Perform delete action
                  Navigator.of(context).pop();
                },
                child: Container(
                  color:
                      isDeleteHovered ? Colors.grey[300] : Colors.transparent,
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: isDeleteHovered ? Colors.red : Colors.black,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Delete',
                        style: TextStyle(
                          color: isDeleteHovered ? Colors.red : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
