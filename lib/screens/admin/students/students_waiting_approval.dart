import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/students/students_list.dart';

class StudentsWaitingApproval extends StatelessWidget {
  const StudentsWaitingApproval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students Waiting Approval'),
      ),
      body: StudentsList(),
    );
  }
}
