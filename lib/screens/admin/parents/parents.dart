import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/parents/parents_list.dart';

class Parents extends StatelessWidget {
  const Parents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parents'),
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
              Navigator.pushNamed(context, '/add_parent');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ParentsList(),
    );
  }
}
