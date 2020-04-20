import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Task list of TODO'),
          centerTitle: true,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: null,
              label: Text('Update'),
              icon: Icon(Icons.check_circle),
            ),
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: null,
              label: Text('Cancel'),
              icon: Icon(Icons.cancel),
            ),
          ],
        ),
      ),
    );
  }
}
