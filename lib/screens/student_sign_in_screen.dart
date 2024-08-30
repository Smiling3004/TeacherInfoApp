// import 'package:demopro/screens/department_selection_screen_stu.dart';
// import 'package:flutter/material.dart';
// import 'package:demopro/screens/student_sign_up_screen.dart';
// import 'package:demopro/screens/department_selection_screen.dart';
//
// class StudentSignInScreen extends StatefulWidget {
//   @override
//   _StudentSignInScreenState createState() => _StudentSignInScreenState();
// }
//
// class _StudentSignInScreenState extends State<StudentSignInScreen> {
//   bool isEmailFocused = false;
//   bool isPasswordFocused = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade200,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous screen
//           },
//         ),
//         title: Text('Sign In as Student'),
//       ),
//       backgroundColor: Colors.grey.shade200,
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Text(
//                     'Sign In as Student',
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.amber.shade900,
//                     ),
//                   ),
//                 ),
//                 Card(
//                   elevation: 4,
//                   color: Colors.amber.shade100,
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         SizedBox(height: 20),
//                         buildEmailTextField(),
//                         SizedBox(height: 10),
//                         buildPasswordTextField(),
//                         SizedBox(height: 5),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end, // Aligns the button to the right
//                           children: [ // Added the children property here
//                             TextButton(
//                               onPressed: () {
//                                 // Implement forgot password logic here
//                               },
//                               child: Text(
//                                 'Forgot Password?',
//                                 style: TextStyle(
//                                   color: Colors.grey.shade700,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 20),
//                         ElevatedButton(
//                           onPressed: () {
//                             // Navigate to the department selection page
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => DepartmentSelectionSPage(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey.shade800,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           child: Container(
//                             width: double.infinity,
//                             padding: EdgeInsets.symmetric(vertical: 15),
//                             child: Center(
//                               child: Text(
//                                 'Sign In',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.amber.shade100,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(height: 10),
//                         TextButton(
//                           onPressed: () {
//                             // Navigate to the sign-up page
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => StudentSignUpScreen()),
//                             );
//                           },
//                           child: RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: "Don\'t have an account? ",
//                                   style: TextStyle(
//                                     color: Colors.grey.shade900,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: 'Sign Up',
//                                   style: TextStyle(
//                                     color: Colors.amber.shade900, // Change this to your desired color
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold, // Optional: make it bold
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         Text(
//                           'Or Continue With',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey.shade500,
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 // Implement sign-in with Google logic here
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 padding: EdgeInsets.all(10),
//                                 child: Image.asset(
//                                   'assets/googleL.png',
//                                   width: 30,
//                                   height: 30,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 20),
//                             GestureDetector(
//                               onTap: () {
//                                 // Implement sign-in with Facebook logic here
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 padding: EdgeInsets.all(10),
//                                 child: Image.asset(
//                                   'assets/facebook.jpeg',
//                                   width: 30,
//                                   height: 30,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildEmailTextField() {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(
//           color: isEmailFocused ? Colors.amber.shade900 : Colors.grey.shade800,
//         ),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Email',
//           contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//           prefixIcon: Icon(Icons.email),
//           border: InputBorder.none,
//         ),
//         keyboardType: TextInputType.emailAddress,
//         onChanged: (value) {
//           setState(() {
//             isEmailFocused = value.isNotEmpty;
//           });
//         },
//       ),
//     );
//   }
//
//   Widget buildPasswordTextField() {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(
//           color: isPasswordFocused ? Colors.amber.shade900 : Colors.grey.shade800,
//         ),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Password',
//           contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//           prefixIcon: Icon(Icons.lock),
//           border: InputBorder.none,
//         ),
//         obscureText: true,
//         onChanged: (value) {
//           setState(() {
//             isPasswordFocused = value.isNotEmpty;
//           });
//         },
//       ),
//     );
//   }
// }


import 'package:demopro/screens/department_selection_screen_stu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:demopro/screens/student_sign_up_screen.dart';
import 'package:demopro/screens/department_selection_screen.dart';

class StudentSignInScreen extends StatefulWidget {
  @override
  _StudentSignInScreenState createState() => _StudentSignInScreenState();
}

class _StudentSignInScreenState extends State<StudentSignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isEmailFocused = false;
  bool isPasswordFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ritlogo.png', // Replace with the path to your college logo asset
              width: 60,
              height: 50,
            ),
            SizedBox(width: 8), // Add spacing between the logo and the text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "K.E.Society's",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Rajarambapu Institute of Technology",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Sign In as Student',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade900,
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  color: Colors.amber.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 20),
                        buildEmailTextField(),
                        SizedBox(height: 10),
                        buildPasswordTextField(),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: signIn,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade800,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber.shade100,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            // Navigate to the sign-up page
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudentSignUpScreen(),
                              ),
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don\'t have an account? ",
                                  style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    color: Colors.amber.shade900,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Or Continue With',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Implement sign-in with Google logic here
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  'assets/googleL.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () {
                                // Implement sign-in with Facebook logic here
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  'assets/facebook.jpeg',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmailTextField() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isEmailFocused ? Colors.amber.shade900 : Colors.grey.shade800,
        ),
      ),
      child: TextFormField(
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          prefixIcon: Icon(Icons.email),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            isEmailFocused = value.isNotEmpty;
          });
        },
      ),
    );
  }

  Widget buildPasswordTextField() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isPasswordFocused ? Colors.amber.shade900 : Colors.grey.shade800,
        ),
      ),
      child: TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          prefixIcon: Icon(Icons.lock),
          border: InputBorder.none,
        ),
        obscureText: true,
        onChanged: (value) {
          setState(() {
            isPasswordFocused = value.isNotEmpty;
          });
        },
      ),
    );
  }

  Future<void> signIn() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the department selection page after successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DepartmentSelectionSPage(),
        ),
      );
    } catch (e) {
      // Handle sign-in errors
      print('Sign-in error: $e');
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Sign-in failed. $e'),
        ),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
