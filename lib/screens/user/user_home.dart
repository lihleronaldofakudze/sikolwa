import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String gender = 'Male';
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(50)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/guy.png'),
                    radius: 50,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lihle Fakudze (Form 5)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    gender == "Male"
                        ? SvgPicture.asset('assets/icons/male.svg')
                        : SvgPicture.asset('assets/icons/female.svg'),
                    Text('$gender')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 20,
                      borderRadius: BorderRadius.circular(50),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 20,
                      borderRadius: BorderRadius.circular(50),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 20,
                      borderRadius: BorderRadius.circular(50),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.location_on),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                PhysicalModel(
                  elevation: 20,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      PhysicalModel(
                        color: Colors.pink,
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/file_download.svg',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Download Assignment',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PhysicalModel(
                  elevation: 20,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      PhysicalModel(
                        color: Colors.blue,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.library_books_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Result',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PhysicalModel(
                  elevation: 20,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      PhysicalModel(
                        color: Colors.yellow,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.videocam_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Video Tutorial',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PhysicalModel(
                  elevation: 20,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      PhysicalModel(
                        color: Colors.orange,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.article,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Performance',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PhysicalModel(
                  elevation: 20,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      PhysicalModel(
                        color: Colors.green,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Calender ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PhysicalModel(
                  elevation: 20,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      PhysicalModel(
                        color: Colors.cyan,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.event,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Timetable',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
