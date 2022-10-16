import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/students/students_list.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/students_waiting_approval');
            },
            icon: Icon(Icons.login),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_student');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: StudentsList(),
    );
  }
}
