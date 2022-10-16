import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddTeacher extends StatefulWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  _AddTeacherState createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _number = TextEditingController();
  final _address = TextEditingController();
  final _transportation = TextEditingController();
  int _selectedGender = 1;
  DateTime _dob = DateTime.now();

  setSelectedGender(value) {
    setState(() {
      _selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final teachersId = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          teachersId == null ? 'Add Teacher' : 'Edit Teachers',
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
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: detailsInputDecoration('First Name'),
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Last Name'),
                    controller: _surnameController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Email Address'),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: detailsInputDecoration('User Password'),
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text(
                      'Gender',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          onChanged: (value) {
                            setSelectedGender(value);
                          },
                          groupValue: _selectedGender,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          onChanged: (value) {
                            setSelectedGender(value);
                          },
                          groupValue: _selectedGender,
                        ),
                        Text('Female', style: TextStyle(fontSize: 18))
                      ],
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pick Date of Birth',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                      onPressed: () async {
                        await showDatePicker(
                                context: context,
                                initialDate: _dob,
                                firstDate: DateTime(1960),
                                lastDate: DateTime.now())
                            .then((date) => setState(() => _dob = date!));
                      },
                      child: Text(
                        _dob.toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Phone Number'),
                    controller: _number,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Address'),
                    controller: _address,
                    keyboardType: TextInputType.streetAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Transportation'),
                    controller: _transportation,
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
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: teachersId == null ? Colors.blue : Colors.orange),
                onPressed: () {},
                child: Text(
                  teachersId == null ? 'Add Teacher' : 'Edit Teacher',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            teachersId == null
                ? Container()
                : SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: Text(
                        'Delete Teacher',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
