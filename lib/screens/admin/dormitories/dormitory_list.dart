import 'package:flutter/material.dart';
import 'package:skolwa/services/dormitory_database.dart';

class DormitoryList extends StatelessWidget {
  const DormitoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                Navigator.pushNamed(context, '/add_dormitory',
                    arguments: dormitories[index].id);
              },
              icon: Icon(Icons.edit),
            ),
          ),
        );
      },
    );
  }
}
