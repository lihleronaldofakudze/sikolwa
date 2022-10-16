import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/teachers/teachers_list.dart';

class TeachersWaitingApproval extends StatelessWidget {
  const TeachersWaitingApproval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teachers Waiting Approval'),
      ),
      body: TeachersList(),
    );
  }
}
