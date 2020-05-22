import 'package:flutter/material.dart';
import 'package:reminderapp/ui/Widget/ButtonBar.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Tasks",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CustomBtn(iconName: Icons.bookmark, color: Color(0xFFD6D9DB)),
                CustomBtn(iconName: Icons.library_books, color: Color(0xFFCEE6F8)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200.0),
              child: Text("No Events" , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add Task',
        child: Icon(Icons.add),
      ),
    );
  }
}
