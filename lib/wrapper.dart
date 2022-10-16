import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/admin_home.dart';
import 'package:skolwa/screens/parent/parent_home.dart';
import 'package:skolwa/screens/student/student_home.dart';
import 'package:skolwa/screens/teacher/teacher_home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)!.settings.arguments;
    if (role == 'Administrator') {
      return AdminHome();
    } else if (role == 'Student') {
      return StudentHome();
    } else if (role == 'Parent') {
      return ParentHome();
    } else if (role == 'Teacher') {
      return TeacherHome();
    }
    return CircularProgressIndicator();
  }
}
