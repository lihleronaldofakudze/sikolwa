import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/admin_home.dart';
import 'package:skolwa/screens/user/user_home.dart';
import 'package:skolwa/screens/view/view_home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)!.settings.arguments;
    if (role == 'Administrator') {
      return AdminHome();
    } else if (role == 'Student') {
      return UserHome();
    } else if (role == 'Parent') {
      return ViewHome();
    } else if (role == 'Teacher') {
      return ViewHome();
    }
    return CircularProgressIndicator();
  }
}
