import 'package:flutter/material.dart';

class AddAdministrator extends StatefulWidget {
  const AddAdministrator({Key? key}) : super(key: key);

  @override
  _AddAdministratorState createState() => _AddAdministratorState();
}

class _AddAdministratorState extends State<AddAdministrator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Administrator'),
      ),
    );
  }
}
