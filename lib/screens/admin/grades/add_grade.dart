import 'package:flutter/material.dart';
import 'package:skolwa/services/dormitory_database.dart';
import 'package:skolwa/services/teacher_database.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddGrade extends StatefulWidget {
  const AddGrade({Key? key}) : super(key: key);

  @override
  _AddGradeState createState() => _AddGradeState();
}

class _AddGradeState extends State<AddGrade> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  String _classTeacher = '';
  String _classDormotory = '';
  @override
  Widget build(BuildContext context) {
    final classId = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(classId == null ? 'Add Grade' : 'Edit Grade'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23),
        child: Column(
          children: [
            Text(
              'Please enter all details',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: detailsInputDecoration('Grade Name'),
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    decoration: detailsInputDecoration('Class Teacher'),
                    items: teachers.map((teacher) {
                      return DropdownMenuItem(
                          value: '${teacher.name} ${teacher.surname}',
                          child: Text(
                              'Teacher ${teacher.name} ${teacher.surname}'));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _classTeacher = value.toString();
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    decoration: detailsInputDecoration('Grade Dormitory'),
                    items: dormitories.map((dormitory) {
                      return DropdownMenuItem(
                          value: dormitory.name,
                          child: Text('Block ${dormitory.name}'));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _classDormotory = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: classId == null ? Colors.blue : Colors.orange),
                onPressed: () {},
                child: Text(
                  classId == null ? 'Add Grade' : 'Edit Grade',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            classId == null
                ? Container()
                : SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: Text(
                        'Delete Grade',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
