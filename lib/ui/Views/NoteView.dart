import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Notes",
          style: TextStyle(color: Colors.black)
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search ,color: Colors.black) ,),
          IconButton(icon:Icon(Icons.list ,color: Colors.black) ,),
          IconButton(icon:Icon(Icons.menu, color: Colors.black) ,),

        ],
      ),
      body: Container(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Task',
        child: Icon(Icons.add),
      ),
    );
  }
}
