import 'package:flutter/material.dart';
import 'tasks_screen.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  // void _navigate(index) async {
  //   final GroupMember _evaluator;
  //   final List _data;

  //   TodoListScreen(this._evaluator, this._data);

  //   final returnData = await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => TaskListScreen(
  //         Assessment.copy(widget._data[index]),
  //       ),
  //     ),
  //   );

  //   if (returnData != null) {
  //     setState(() => widget._data[index] = returnData);
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My To Do List'),
      ),
      body: ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text('Todo Title'),
          subtitle: Text('How many task'),
          onTap: () => TaskListScreen(),
        ),
      ),
    );
  }
}
