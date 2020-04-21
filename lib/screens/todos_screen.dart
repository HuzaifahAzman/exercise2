import 'package:flutter/material.dart';
import 'tasks_screen.dart';
import 'package:exercise2/models/todo.dart';
import 'package:exercise2/models/task.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  var title = ['MAP Project','Preparing for online learning','Things to do this weekend'];
  var task1title = 'deliverable1';
  var task1 = new Task(title: 'Deliverable1', completed: true);
  var task2 = new Task(title: 'Deliverable2', completed: false);
  var task3 = new Task(title: 'Deliverable3', completed: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My To Do List'),
      ),
      body: ListView.separated(
        itemCount: title.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.blueGrey,
        ),
        itemBuilder: (context, index){
          List<Task> todo1task = [task1];
          List<Task> todo2task = [task1,task2];
          List<Task> todo3task = [task1,task2,task3];
          var todo1 = new Todo(title: title[0], items: todo1task);
          var todo2 = new Todo(title: title[1], items: todo2task);
          var todo3 = new Todo(title: title[2], items: todo3task);
          List<Todo> list = [todo1,todo2,todo3];
          var task = list[index].items.length;

          return ListTile(
            onTap : () {
              Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => TaskListScreen(),
                settings: RouteSettings(
                  arguments: list[index],
                ),
              )
            );
            },
        title: Text(list[index].title),
            subtitle: Text('This has $task task(s)'),
          );
        }
        
        
        
      ),
    );
  }
}
