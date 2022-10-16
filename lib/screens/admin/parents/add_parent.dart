import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddParent extends StatefulWidget {
  const AddParent({Key? key}) : super(key: key);

  @override
  _AddParentState createState() => _AddParentState();
}

class _AddParentState extends State<AddParent> {
  @override
  Widget build(BuildContext context) {
    final parentId = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          parentId == null ? 'Add Parent' : 'Edit Parent',
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
              backgroundImage: AssetImage('images/guy.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Change Profile Image',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: detailsInputDecoration('Relation'),
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
                    decoration: detailsInputDecoration('Profession'),
                    keyboardType: TextInputType.text,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {},
                child: Text(
                  'Link Student Account',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: parentId == null ? Colors.blue : Colors.orange),
                onPressed: () {},
                child: Text(
                  'Add Parent',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            parentId == null
                ? Container()
                : SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: Text(
                        'Add Parent',
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
