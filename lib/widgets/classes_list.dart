import 'package:flutter/material.dart';
import 'package:skolwa/models/class.dart';

class ClassesList extends StatelessWidget {
  const ClassesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final classes = [
      Class(
          id: 1,
          name: 'Form 5',
          teacher: 'Mr Fakudze',
          dormitory: 'Form 5 A Block')
    ];
    return ListView.builder(
      itemCount: classes.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('${classes[index].name}'),
            subtitle:
                Text('${classes[index].dormitory} - ${classes[index].teacher}'),
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
