import 'package:flutter/material.dart';
import 'package:skolwa/services/grade_database.dart';

class GradesList extends StatelessWidget {
  const GradesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: grades.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('${grades[index].name}'),
            subtitle: Text(
                '${grades[index].dormitory} - Teacher ${grades[index].teacher}'),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add_class',
                    arguments: grades[index].id);
              },
              icon: Icon(Icons.edit),
            ),
          ),
        );
      },
    );
  }
}
