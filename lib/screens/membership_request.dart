import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class MembershipRequest extends StatefulWidget {
  const MembershipRequest({Key? key}) : super(key: key);

  @override
  _MembershipRequestState createState() => _MembershipRequestState();
}

class _MembershipRequestState extends State<MembershipRequest> {
  DateTime _dob = DateTime.now();
  int _selectedGender = 1;

  setSelectedGender(val) {
    setState(() {
      _selectedGender = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final role = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$role Membership Request',
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'Please enter all details',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: Column(
                  children: [
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
                    Row(children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade400),
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
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade400)),
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
                      decoration: detailsInputDecoration('Email Address'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: detailsInputDecoration('Password'),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: detailsInputDecoration('Confirm Password'),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: detailsInputDecoration('Phone Number'),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: detailsInputDecoration('Physical Address'),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
