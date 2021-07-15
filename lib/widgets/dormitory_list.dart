import 'package:flutter/material.dart';
import 'package:skolwa/models/dormitory.dart';

class DormitoryList extends StatelessWidget {
  const DormitoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dormitories = [
      Dormitory(
          id: 1,
          name: 'Form 1 A',
          description: '23 Students Capacity',
          operations: ''),
      Dormitory(
          id: 1,
          name: 'Form 1 B',
          description: '43 Students Capacity',
          operations: ''),
      Dormitory(
          id: 1,
          name: 'Form 2 A',
          description: '53 Students Capacity',
          operations: ''),
      Dormitory(
          id: 1,
          name: 'Form 2 B',
          description: '35 Students Capacity',
          operations: ''),
    ];

    return ListView.builder(
      itemCount: dormitories.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(
              '${dormitories[index].name}',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              '${dormitories[index].description}',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ),
        );
      },
    );
  }
}
