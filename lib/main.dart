import 'package:demopro/screens/department_selection_screen_stu.dart';
import 'package:demopro/screens/teacher_edit_profile.dart';
import 'package:demopro/screens/teacher_information_screen_stu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:demopro/screens/teacher_sign_in_screen.dart';
import 'package:demopro/screens/teacher_sign_up_screen.dart';
import 'package:demopro/screens/student_sign_in_screen.dart';
import 'package:demopro/screens/student_sign_up_screen.dart';
import 'package:demopro/screens/user_type_selection_screen.dart';
import 'package:demopro/screens/landing_screen.dart';
import 'package:demopro/screens/department_selection_screen.dart';
import 'package:demopro/screens/teacher_selection_screen.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyDokD6mEZVJzlD-S1zHsQrPdBmG2E4RZ_c",
      authDomain: "demopro-218e8.firebaseapp.com",
      projectId: "demopro-218e8",
      storageBucket: "demopro-218e8.appspot.com",
      messagingSenderId: "836969897933",
      appId: "1:836969897933:web:34648f9d63ec8daafa6e84")
  );
  }
  else
    {
      await Firebase.initializeApp();
    }


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teacher Directory App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/landingpage',
      routes: {
        '/landingpage': (context) => LandingPage(),
        '/userpage': (context) => UserTypeSelectionScreen(),
        '/teacher-sign-in': (context) => TeacherSignInScreen(),
        '/teacher-sign-up': (context) => TeacherSignUpScreen(),
        '/student-sign-in': (context) => StudentSignInScreen(),
        '/student-sign-up': (context) => StudentSignUpScreen(),
        '/department-selection': (context) => DepartmentSelectionPage(),
        //'/teacher-selection': (context) => TeacherSelectionPage(departmentName: '',),
        '/department-selectionS': (context) => DepartmentSelectionSPage(),
        //'/edit-profie': (context) => TeacherProfilePage(departmentName: departmentName, teacherId: teacherId),
       // '/teacher_information_screen_stu': (context) => TeacherInfoStuPage(teacherId: '', departmentName: '',),
      },
    );
  }
}

