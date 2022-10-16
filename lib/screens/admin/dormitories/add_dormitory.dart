import 'package:flutter/material.dart';
import 'package:skolwa/widgets/details_input_decoration.dart';

class AddDormitory extends StatefulWidget {
  const AddDormitory({Key? key}) : super(key: key);

  @override
  _AddDormitoryState createState() => _AddDormitoryState();
}

class _AddDormitoryState extends State<AddDormitory> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dormitoryId = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          dormitoryId == null ? 'Add Dormitory' : 'Edit Dormitory',
        ),
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
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: detailsInputDecoration('Dormitory Name'),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _descriptionController,
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
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: dormitoryId == null ? Colors.blue : Colors.orange),
                onPressed: () {},
                child: Text(
                  dormitoryId == null ? 'Add Dormitory' : 'Edit Dormitory',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            dormitoryId == null
                ? Container()
                : SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: Text(
                        'Delete Dormitory',
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
