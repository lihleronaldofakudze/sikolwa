import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/dormitories/dormitory_list.dart';

class Dormitories extends StatelessWidget {
  const Dormitories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dormitories'),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_dormitory');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: DormitoryList(),
    );
  }
}
