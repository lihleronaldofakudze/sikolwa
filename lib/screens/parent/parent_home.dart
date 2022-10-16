import 'package:flutter/material.dart';
import 'package:skolwa/screens/admin/students/student_drawer.dart';

class ParentHome extends StatelessWidget {
  const ParentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: studentDrawer(),
      appBar: AppBar(
        title: Text('Parent'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.insert_invitation_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow.shade700,
              padding: EdgeInsets.all(23),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.school,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'STUDENT DETAILS',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(23),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.view_list_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'RESULTS',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              padding: EdgeInsets.all(23),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.date_range_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'TIMETABLE',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.purple,
              padding: EdgeInsets.all(23),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.description_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'EXAMS',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.orange,
              padding: EdgeInsets.all(23),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_money_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'FEES DETAILS',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green.shade300,
                    padding: EdgeInsets.all(23),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.event_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'EVENTS',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.cyan,
                    padding: EdgeInsets.all(23),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chat_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'NOTES',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
