import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skolwa/services/student_database.dart';

class StudentsList extends StatelessWidget {
  const StudentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(students[index].image),
                ),
                title:
                    Text('${students[index].name} ${students[index].surname}'),
                subtitle: Text('${students[index].address}'),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add_student',
                        arguments: students[index].id);
                  },
                  icon: Icon(Icons.edit),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/holiday_village.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(students[index].grade)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              '${students[index].dob.year}/${students[index].dob.month}/${students[index].dob.day}')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Text('${students[index].email}'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(
                            width: 10,
                          ),
                          Text(students[index].number.toString())
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          students[index].gender == 'Male'
                              ? SvgPicture.asset('assets/icons/male.svg')
                              : SvgPicture.asset('assets/icons/female.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('${students[index].gender}')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
