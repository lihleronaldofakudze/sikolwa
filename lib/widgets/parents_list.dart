import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skolwa/models/parent.dart';

class ParentsList extends StatelessWidget {
  const ParentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parents = [
      Parent(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Mhlonishwa',
          surname: 'Fakuzde',
          email: 'lihleronaldofakudze@gmail.com',
          gender: 'Male',
          address: 'Mahlanya, Lobamba Lomdzala',
          number: 76499014,
          profession: 'Accountant'),
      Parent(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Phumlani',
          surname: 'Dlamini',
          email: 'phumlanicheddardlamini@gmail.com',
          gender: 'Male',
          address: 'Ludzedze, Mastapha',
          number: 76499014,
          profession: 'Journalist'),
      Parent(
          id: 1,
          image: 'assets/images/guy.png',
          name: 'Nomvuyo',
          surname: 'Nobela',
          email: 'nomvuyoangelonobela@gmail.com',
          gender: 'Female',
          address: 'Moneni, Manzini',
          number: 76960405,
          profession: 'Designer'),
    ];

    return ListView.builder(
      itemCount: parents.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(parents[index].image),
                ),
                title: Text('${parents[index].name} ${parents[index].surname}'),
                subtitle: Text('${parents[index].address}'),
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
                          Text(parents[index].profession)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Text('${parents[index].email}'),
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
                          Text(parents[index].number.toString())
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          parents[index].gender == 'Male'
                              ? SvgPicture.asset('assets/icons/male.svg')
                              : SvgPicture.asset('assets/icons/female.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('${parents[index].gender}')
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
