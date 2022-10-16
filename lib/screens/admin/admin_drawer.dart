import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skolwa/widgets/drawer_button.dart';

Drawer adminDrawer(BuildContext context) {
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
              drawerButton(context, '/teachers', Icon(Icons.hail), 'Teachers'),
              SizedBox(
                height: 10,
              ),
              drawerButton(
                  context, '/students', Icon(Icons.school), 'Students'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/parents',
                  Icon(Icons.supervisor_account_outlined), 'Parents'),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/dormitories');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('icons/holiday_village.svg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Dormitories',
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
                  context, '/grades', Icon(Icons.class_outlined), 'Grades'),
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
              drawerButton(context, '/subjects', Icon(Icons.menu_book_outlined),
                  'Subjects'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/assignments',
                  Icon(Icons.assignment_outlined), 'Assignments'),
              SizedBox(
                height: 10,
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
              drawerButton(context, '/events', Icon(Icons.book_online_outlined),
                  'Events'),
              SizedBox(
                height: 10,
              ),
              drawerButton(
                  context, '/news', Icon(Icons.forum_outlined), 'News'),
              SizedBox(
                height: 10,
              ),
              drawerButton(context, '/payments', Icon(Icons.payments_outlined),
                  'Payments'),
              SizedBox(
                height: 10,
              ),
              drawerButton(
                  context, '/admin_settings', Icon(Icons.settings), 'Settings'),
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
