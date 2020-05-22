import 'package:flutter/material.dart';
import 'package:reminderapp/ui/Widget/ButtonBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Events',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.mic,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ButtonBars(),
              _reminderAddBtn(),
              _StarterBtn(),
            ],
          ),
        ));
  }
}

class _reminderAddBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Text(
                'Reminders',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                  color: Colors.white,
                  child: GestureDetector(
                    child: Icon(Icons.add_circle_outline),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class _StarterBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 600,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.5, 0.5),
          // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFFF1CDD9),
            const Color(0xFFC0EEE6)
          ], // whitish to gray
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: InkWell(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.calendar_today,
                size: 50,
                color: Colors.black87,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  "You're all done",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
