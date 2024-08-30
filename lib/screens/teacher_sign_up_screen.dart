// import 'package:flutter/material.dart';
// import 'package:demopro/screens/teacher_sign_in_screen.dart';
//
// class TeacherSignUpScreen extends StatefulWidget {
//   @override
//   _TeacherSignUpScreenState createState() => _TeacherSignUpScreenState();
// }
//
// class _TeacherSignUpScreenState extends State<TeacherSignUpScreen> {
//   bool isEmailFocused = false;
//   bool isPasswordFocused = false;
//   bool isConfirmPasswordFocused = false;
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
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/ritlogo.png', // Replace with the path to your college logo asset
//               width: 60,
//               height: 50,
//             ),
//             SizedBox(width: 8), // Add spacing between the logo and the text
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "K.E.Society's",
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   "Rajarambapu Institute of Technology",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
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
//                     'Sign Up as Teacher',
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
//                         buildNameTextField(),
//                         SizedBox(height: 10),
//                         buildEmailTextField(),
//                         SizedBox(height: 10),
//                         buildPasswordTextField(),
//                         SizedBox(height: 10),
//                         buildConfirmPasswordTextField(),
//                         SizedBox(height: 20),
//                         ElevatedButton(
//                           onPressed: () {
//                             // Implement sign-up logic here
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
//                                 'Sign Up',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.amber.shade100,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         TextButton(
//                           onPressed: () {
//                             // Navigate to the sign-in page
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => TeacherSignInScreen()),
//                             );
//                           },
//                           child: RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: "Already have an account? ",
//                                   style: TextStyle(
//                                     color: Colors.grey.shade900,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: 'Sign In',
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
//   Widget buildNameTextField() {
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
//           hintText: 'Name',
//           contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//           prefixIcon: Icon(Icons.person),
//           border: InputBorder.none,
//         ),
//         onChanged: (value) {
//           setState(() {
//             // You can handle name changes here if needed
//           });
//         },
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
//
//   Widget buildConfirmPasswordTextField() {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(
//           color: isConfirmPasswordFocused ? Colors.amber.shade900 : Colors.grey.shade800,
//         ),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: 'Confirm Password',
//           contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//           prefixIcon: Icon(Icons.vpn_key),
//           border: InputBorder.none,
//         ),
//         obscureText: true,
//         onChanged: (value) {
//           setState(() {
//             isConfirmPasswordFocused = value.isNotEmpty;
//           });
//         },
//       ),
//     );
//   }
// }

// teacher_sign_up_screen.dart

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

class TeacherSignUpScreen extends StatefulWidget {
  @override
  _TeacherSignUpScreenState createState() => _TeacherSignUpScreenState();
}

class _TeacherSignUpScreenState extends State<TeacherSignUpScreen> {
  final TextEditingController _nameController = TextEditingController(); // Add name controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool isNameFocused = false; // Add name focused state
  bool isEmailFocused = false;
  bool isPasswordFocused = false;
  bool isConfirmPasswordFocused = false;

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
                    'Sign Up as Teacher',
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
                        buildNameTextField(), // Add name text field
                        SizedBox(height: 10),
                        buildEmailTextField(),
                        SizedBox(height: 10),
                        buildPasswordTextField(),
                        SizedBox(height: 10),
                        buildConfirmPasswordTextField(),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: signUp,
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
                                'Sign Up',
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
                            // Navigate to the sign-in page
                            Navigator.pop(context);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Already have an account? ",
                                  style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Sign In',
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

  Widget buildNameTextField() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isNameFocused ? Colors.amber.shade900 : Colors.grey.shade800,
        ),
      ),
      child: TextFormField(
        controller: _nameController,
        decoration: InputDecoration(
          hintText: 'Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          prefixIcon: Icon(Icons.person),
          border: InputBorder.none,
        ),
        onChanged: (value) {
          setState(() {
            isNameFocused = value.isNotEmpty;
          });
        },
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

  Widget buildConfirmPasswordTextField() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isConfirmPasswordFocused ? Colors.amber.shade900 : Colors.grey.shade800,
        ),
      ),
      child: TextFormField(
        controller: _confirmPasswordController,
        decoration: InputDecoration(
          hintText: 'Confirm Password',
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          prefixIcon: Icon(Icons.vpn_key),
          border: InputBorder.none,
        ),
        obscureText: true,
        onChanged: (value) {
          setState(() {
            isConfirmPasswordFocused = value.isNotEmpty;
          });
        },
      ),
    );
  }

  Future<void> signUp() async {
    try {
      if (_passwordController.text != _confirmPasswordController.text) {
        throw 'Passwords do not match';
      }

      // Sign up user with email and password
      UserCredential userCredential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Store additional user data in Firestore
      await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'name': _nameController.text,
        'email': _emailController.text,
      });

      // Handle sign-up success
      print('Signed up: ${userCredential.user!.uid}');
    } catch (e) {
      // Handle sign-up failure
      print('Sign-up error: $e');
      // Display error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Sign-up failed. $e'),
        ),
      );
    }
  }
}
