import 'package:flutter/material.dart';
import 'package:skolwa/widgets/classes_list.dart';

class Classes extends StatelessWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classes'),
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
              Navigator.pushNamed(context, '/add_class');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ClassesList(),
    );
  }
}
