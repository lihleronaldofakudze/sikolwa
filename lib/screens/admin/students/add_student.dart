import 'package:flutter/material.dart';
import 'package:skolwa/services/grade_database.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  int _selectedGender = 1;
  DateTime _dob = DateTime.now();
  final _numberController = TextEditingController();
  final _addressController = TextEditingController();
  late String _grade;

  setSelectedGender(val) {
    setState(() {
      _selectedGender = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final studentId = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          studentId == null ? 'Add Student' : 'Edit Student',
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
                    decoration: detailsInputDecoration('Password'),
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text(
                      'Gender',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setSelectedGender(value);
                          },
                        ),
                        Text('Male', style: TextStyle(fontSize: 18))
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
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Pick Date Of Birth',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400)),
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
                    controller: _numberController,
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Address'),
                    controller: _addressController,
                    keyboardType: TextInputType.streetAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    decoration: detailsInputDecoration('Grade'),
                    items: grades
                        .map((grade) => DropdownMenuItem(
                              child: Text(grade.name),
                              value: grade.name,
                            ))
                        .toList(),
                    onChanged: (value) =>
                        setState(() => _grade = value.toString()),
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
                    primary: studentId == null ? Colors.blue : Colors.orange),
                onPressed: () {},
                child: Text(
                  studentId == null ? 'Add Student' : 'Edit Student',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            studentId == null
                ? Container()
                : SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: Text(
                        'Delete Student',
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
