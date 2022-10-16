import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/teachers/teachers_list.dart';

class Teachers extends StatelessWidget {
  const Teachers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Teachers'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/teachers_waiting_approval');
            },
            icon: Icon(Icons.login),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_teacher');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: TeachersList(),
    );
  }
}
