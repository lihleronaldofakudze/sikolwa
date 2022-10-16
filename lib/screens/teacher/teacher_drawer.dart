import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skolwa/widgets/drawer_button.dart';

Drawer teacherDrawer(BuildContext context) {
  return Drawer(
    child: Builder(
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/logo.png'),
                              fit: BoxFit.contain)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sikolwa',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/exams');
                  Navigator.pop(context);
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('icons/quiz.svg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Exams',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              drawerButton(
                  context, '/calendar', Icon(Icons.ac_unit), 'Calendar'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/classes_schedule', Icon(Icons.ac_unit),
                  'Classes Schedule'),
              SizedBox(
                height: 10,
              ),
              drawerButton(
                  context, '/messages', Icon(Icons.ac_unit), 'Messages'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/attendances',
                  Icon(Icons.grading_outlined), 'Attendances'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/library',
                  Icon(Icons.local_library_outlined), 'Library'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/assignments',
                  Icon(Icons.assignment_outlined), 'Assignments'),
              SizedBox(
                height: 10,
              ),
              drawerButton(
                  context, '/about', Icon(Icons.info_outlined), 'About'),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
              )
            ],
          ),
        );
      },
    ),
  );
}
