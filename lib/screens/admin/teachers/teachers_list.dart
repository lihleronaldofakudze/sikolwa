import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skolwa/services/teacher_database.dart';

class TeachersList extends StatelessWidget {
  const TeachersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(teachers[index].image),
                ),
                title:
                    Text('${teachers[index].name} ${teachers[index].surname}'),
                subtitle: Text('${teachers[index].address}'),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add_teacher',
                        arguments: teachers[index].id);
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
                          Icon(Icons.directions_car_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(teachers[index].transportation)
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
                              '${teachers[index].dob.year}/${teachers[index].dob.month}/${teachers[index].dob.day}')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Text('${teachers[index].email}'),
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
                          Text(teachers[index].number.toString())
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          teachers[index].gender == 'Male'
                              ? SvgPicture.asset('assets/icons/male.svg')
                              : SvgPicture.asset('assets/icons/female.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('${teachers[index].gender}')
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
