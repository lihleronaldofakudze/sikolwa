import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skolwa/models/student.dart';

class StudentsList extends StatelessWidget {
  const StudentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final students = [
      Student(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Lihle',
          surname: 'Fakuzde',
          email: 'lihleronaldofakudze@gmail.com',
          gender: 'Male',
          address: 'Mahlanya, Lobamba Lomdzala',
          number: 76499014,
          dob: DateTime.parse("1997-06-02"),
          grade: 'Form 5 A'),
      Student(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Phumlani',
          surname: 'Dlamini',
          email: 'phumlanicheddardlamini@gmail.com',
          gender: 'Male',
          address: 'Ludzedze, Mastapha',
          number: 76499014,
          dob: DateTime.parse("1997-06-02"),
          grade: 'Form 3 A'),
      Student(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Nomvuyo',
          surname: 'Nobela',
          email: 'nomvuyoangelonobela@gmail.com',
          gender: 'Female',
          address: 'Moneni, Manzini',
          number: 76960405,
          dob: DateTime.parse("1997-06-02"),
          grade: 'Form 1 5'),
    ];

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
                  onPressed: () {},
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
