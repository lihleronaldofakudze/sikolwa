import 'package:flutter/material.dart';
import 'package:skolwa/widgets/teachers_list.dart';

class Teachers extends StatelessWidget {
  const Teachers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_teacher');
            },
            icon: Icon(Icons.add),
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
