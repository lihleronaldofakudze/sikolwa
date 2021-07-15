import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Drawer adminDrawer() {
  return Drawer(
    child: Builder(
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/teachers');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.hail),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Teachers',
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/students');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.school),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Students',
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/parents');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.supervisor_account_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Parents',
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/dormitories');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/icons/holiday_village.svg'),
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.class__outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Classes',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.grading_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Attendances',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.local_library_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Library',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu_book_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Subjects',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.assignment_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Assignments',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/quiz.svg'),
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.book_online_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Events',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.forum_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'News',
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
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, '/classes');
                },
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.payments_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Payments',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
