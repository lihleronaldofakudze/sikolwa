import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class EditSchoolInfo extends StatefulWidget {
  const EditSchoolInfo({Key? key}) : super(key: key);

  @override
  _EditSchoolInfoState createState() => _EditSchoolInfoState();
}

class _EditSchoolInfoState extends State<EditSchoolInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit School Info'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
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
                      decoration: detailsInputDecoration('School Name'),
                      keyboardType: TextInputType.text,
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
                      decoration: detailsInputDecoration('Telephone Number'),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: detailsInputDecoration('Email Address'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save Details',
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
