import 'package:flutter/material.dart';
import 'package:skolwa/screens/teacher/teacher_drawer.dart';

class TeacherHome extends StatelessWidget {
  const TeacherHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: teacherDrawer(context),
      appBar: AppBar(
        title: Text(
          'Teacher',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Teacher',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            Text(
              'Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'No Notifications Available',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
