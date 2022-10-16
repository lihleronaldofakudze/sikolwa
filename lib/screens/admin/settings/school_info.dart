import 'package:flutter/material.dart';

class SchoolInfo extends StatelessWidget {
  const SchoolInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Information'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/edit_school_info');
            },
            icon: Icon(Icons.edit),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(23.0),
        child: Column(
          children: [
            Text(
              'School Name',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Sgele High School',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Physical Address',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Ghetto Streets of Eswatini',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Telephone Number',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '+2682440440',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Email Address',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'sgele@ghetto.com',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
