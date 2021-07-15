import 'package:flutter/material.dart';
import 'package:skolwa/widgets/parents_list.dart';

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
