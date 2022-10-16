import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/grades/grades_list.dart';

class Grades extends StatelessWidget {
  const Grades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grades'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_grade');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: GradesList(),
    );
  }
}
