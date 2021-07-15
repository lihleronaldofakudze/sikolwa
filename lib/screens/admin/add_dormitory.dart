import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddDormitory extends StatelessWidget {
  const AddDormitory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Dormitory',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23),
        child: Column(
          children: [
            Text(
              'Please enter all detaills',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: detailsInputDecoration('Dormitory Name'),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: detailsInputDecoration('Dormitory Description'),
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add Dormitory',
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
