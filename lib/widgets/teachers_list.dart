import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skolwa/models/teacher.dart';

class TeachersList extends StatelessWidget {
  const TeachersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final teachers = [
      Teacher(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Lihle',
          surname: 'Fakuzde',
          email: 'lihleronaldofakudze@gmail.com',
          gender: 'Male',
          address: 'Mahlanya, Lobamba Lomdzala',
          number: 76499014,
          dob: DateTime.parse("1997-06-02"),
          transportation: 'Car'),
      Teacher(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Phumlani',
          surname: 'Dlamini',
          email: 'phumlanicheddardlamini@gmail.com',
          gender: 'Male',
          address: 'Ludzedze, Mastapha',
          number: 76499014,
          dob: DateTime.parse("1997-06-02"),
          transportation: 'Public'),
      Teacher(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Nomvuyo',
          surname: 'Nobela',
          email: 'nomvuyoangelonobela@gmail.com',
          gender: 'Female',
          address: 'Moneni, Manzini',
          number: 76960405,
          dob: DateTime.parse("1997-06-02"),
          transportation: 'Car'),
    ];

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
