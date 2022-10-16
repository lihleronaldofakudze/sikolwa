import 'package:flutter/material.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Sikolwa',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Choose the role that best describes you after receiving your login details, from the administrator.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login',
                        arguments: 'Administrator');
                  },
                  child: const Text(
                    'Administrator',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login',
                        arguments: 'Teacher');
                  },
                  child: const Text(
                    'Teacher',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login',
                        arguments: 'Student');
                  },
                  child: const Text(
                    'Student',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login', arguments: 'Parent');
                  },
                  child: const Text(
                    'Parent',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
