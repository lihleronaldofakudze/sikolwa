import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddTeacher extends StatelessWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Teacher',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23),
        child: Column(
          children: [
            Text(
              'Please enter all details',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/guy.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: detailsInputDecoration('User Name'),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('First Name'),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Last Name'),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Email Address'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: detailsInputDecoration('User Password'),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text(
                      'Gender',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        Text('Male')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text('Female')
                      ],
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Date of birth'),
                    keyboardType: TextInputType.datetime,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Phone Number'),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Address'),
                    keyboardType: TextInputType.streetAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Transportation'),
                    keyboardType: TextInputType.text,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add Teacher',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
