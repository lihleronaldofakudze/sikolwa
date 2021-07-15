import 'package:flutter/material.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Sikolwa',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Choose the role that best describes you after receiving your login details, from the administrator.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(
                height: 23,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login',
                        arguments: 'Administrator');
                  },
                  child: Text(
                    'Administrator',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login', arguments: 'Teacher');
                  },
                  child: Text(
                    'Teacher',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login',
                        arguments: 'Student');
                  },
                  child: Text(
                    'Student',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login', arguments: 'Parent');
                  },
                  child: Text(
                    'Parent',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
