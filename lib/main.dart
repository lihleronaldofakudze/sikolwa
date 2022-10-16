import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skolwa/firebase_options.dart';
import 'package:skolwa/screens/admin/admin_home.dart';
import 'package:skolwa/screens/admin/dormitories/add_dormitory.dart';
import 'package:skolwa/screens/admin/dormitories/dormitories.dart';
import 'package:skolwa/screens/admin/grades/add_grade.dart';
import 'package:skolwa/screens/admin/grades/grades.dart';
import 'package:skolwa/screens/admin/parents/add_parent.dart';
import 'package:skolwa/screens/admin/parents/parents.dart';
import 'package:skolwa/screens/admin/parents/parents_waiting_approval.dart';
import 'package:skolwa/screens/admin/settings/admin_settings.dart';
import 'package:skolwa/screens/admin/settings/edit_school_info.dart';
import 'package:skolwa/screens/admin/settings/school_info.dart';
import 'package:skolwa/screens/admin/students/add_student.dart';
import 'package:skolwa/screens/admin/students/students.dart';
import 'package:skolwa/screens/admin/students/students_waiting_approval.dart';
import 'package:skolwa/screens/admin/teachers/add_teacher.dart';
import 'package:skolwa/screens/admin/teachers/teachers.dart';
import 'package:skolwa/screens/admin/teachers/teachers_waiting_approval.dart';
import 'package:skolwa/screens/choose_role.dart';
import 'package:skolwa/screens/login.dart';
import 'package:skolwa/screens/membership_request.dart';
import 'package:skolwa/screens/teacher/teacher_home.dart';
import 'package:skolwa/wrapper.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => AnimatedSplashScreen(
              duration: 3000,
              splashTransition: SplashTransition.scaleTransition,
              nextScreen: const ChooseRole(),
              splash: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.contain),
                ),
              ),
            ),
        '/login': (context) => const Login(),
        '/membership_request': (context) => const MembershipRequest(),
        '/wrapper': (context) => const Wrapper(),

        //Administrator Directories
        '/admin_home': (context) => const AdminHome(),
        '/dormitories': (context) => const Dormitories(),
        '/add_dormitory': (context) => const AddDormitory(),
        '/students': (context) => const Students(),
        '/add_student': (context) => const AddStudent(),
        '/students_waiting_approval': (context) =>
            const StudentsWaitingApproval(),
        '/teachers': (context) => const Teachers(),
        '/add_teacher': (context) => const AddTeacher(),
        '/teachers_waiting_approval': (context) =>
            const TeachersWaitingApproval(),
        '/grades': (context) => const Grades(),
        '/add_grade': (context) => const AddGrade(),
        '/parents': (context) => const Parents(),
        '/add_parent': (context) => const AddParent(),
        '/parents_waiting_approval': (context) =>
            const ParentsWaitingApproval(),
        '/admin_settings': (context) => const AdminSettings(),
        '/school_info': (context) => const SchoolInfo(),
        '/edit_school_info': (context) => const EditSchoolInfo(),

        //Teacher Directories
        '/teacher_home': (context) => const TeacherHome()
        //Student Directories
        //Parent Directories
      },
      debugShowCheckedModeBanner: false,
      title: 'Sikolwa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.koHoTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
