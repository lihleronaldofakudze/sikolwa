import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skolwa/screens/admin/add_class.dart';
import 'package:skolwa/screens/admin/add_dormitory.dart';
import 'package:skolwa/screens/admin/add_parent.dart';
import 'package:skolwa/screens/admin/add_student.dart';
import 'package:skolwa/screens/admin/add_teacher.dart';
import 'package:skolwa/screens/admin/admin_home.dart';
import 'package:skolwa/screens/admin/classes.dart';
import 'package:skolwa/screens/admin/dormitories.dart';
import 'package:skolwa/screens/admin/parents.dart';
import 'package:skolwa/screens/admin/students.dart';
import 'package:skolwa/screens/admin/teachers.dart';
import 'package:skolwa/screens/choose_role.dart';
import 'package:skolwa/screens/login.dart';
import 'package:skolwa/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => AnimatedSplashScreen(
              duration: 3000,
              splashTransition: SplashTransition.scaleTransition,
              nextScreen: ChooseRole(),
              splash: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/mbabane-central-high.png'),
                        fit: BoxFit.contain)),
              ),
            ),
        '/login': (context) => Login(),
        '/wrapper': (context) => Wrapper(),
        '/admin_home': (context) => AdminHome(),
        '/dormitories': (context) => Dormitories(),
        '/add_dormitory': (context) => AddDormitory(),
        '/students': (context) => Students(),
        '/add_student': (context) => AddStudent(),
        '/teachers': (context) => Teachers(),
        '/add_teacher': (context) => AddTeacher(),
        '/classes': (context) => Classes(),
        '/add_class': (context) => AddClass(),
        '/parents': (context) => Parents(),
        '/add_parent': (context) => AddParent(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Sikolwa',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.koHoTextTheme(),
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
