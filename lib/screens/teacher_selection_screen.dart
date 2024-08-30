// import 'package:demopro/screens/department_selection_screen.dart';
// import 'package:demopro/screens/teacher_information_screen.dart';
// import 'package:flutter/material.dart';
//  // Import the teacher info page file
//
// void main() {
//   runApp(MaterialApp(
//     home: TeacherSelectionPage(),
//   ));
// }
//
// class TeacherSelectionPage extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade200,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DepartmentSelectionPage()),
//             ); // Navigate back to the previous screen
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () {
//               // Open the drawer when profile icon is tapped
//               _scaffoldKey.currentState!.openEndDrawer();
//             },
//           ),
//         ],
//         title: Text('Teacher Selection'),
//       ),
//       endDrawer: Drawer(
//         child: Container(
//           color: Colors.amber.shade100,
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade700,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundImage: AssetImage('assets/profile_photo.jpg'), // Replace with user's profile photo
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       'John Doe', // Replace with user's name
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontFamily: 'Poppins'
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 title: Text('Edit Profile'),
//                 onTap: () {
//                   // Handle edit profile action
//                 },
//               ),
//               ListTile(
//                 title: Text('Settings'),
//                 onTap: () {
//                   // Handle settings action
//                 },
//               ),
//               ListTile(
//                 title: Text('Logout'),
//                 onTap: () {
//                   // Handle logout action
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Container(
//         color: Colors.grey.shade200, // Grey background color
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Add padding
//           children: [
//             TeacherCard(
//               teacherName: 'S.U. Mane',
//               teacherPhoto: 'assets/ritlogo.png', // Replace with teacher photo
//               teacherPost: 'HOD',
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => TeacherInfoPage(
//                       teacherName: 'S.U. Mane',
//                       teacherPhoto: 'assets/S.U.Mane.jpeg', // Replace with teacher's profile photo
//                       teacherPost: 'HOD',
//                     ),
//                   ),
//                 );
//               },
//             ),
//             SizedBox(height: 10),
//             // Add other teacher cards here
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class TeacherCard extends StatelessWidget {
//   final String teacherName;
//   final String teacherPhoto;
//   final String teacherPost;
//   final VoidCallback onTap;
//
//   TeacherCard({
//     required this.teacherName,
//     required this.teacherPhoto,
//     required this.teacherPost,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         color: Colors.amber.shade100,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 100, // Set a fixed height for the teacher card
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage(teacherPhoto),
//                   radius: 30,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         teacherName,
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         teacherPost,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:demopro/screens/department_selection_screen.dart';
// import 'package:demopro/screens/teacher_information_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: TeacherSelectionPage(),
//   ));
// }
//
// class Teacher {
//   final String name;
//   final String photoUrl;
//   final String post;
//
//   Teacher({
//     required this.name,
//     required this.photoUrl,
//     required this.post,
//   });
//
//   factory Teacher.fromMap(Map<String, dynamic> map) {
//     return Teacher(
//       name: map['name'],
//       photoUrl: map['photoUrl'],
//       post: map['post'],
//     );
//   }
// }
//
// class TeacherSelectionPage extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade200,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DepartmentSelectionPage()),
//             ); // Navigate back to the previous screen
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () {
//               // Open the drawer when profile icon is tapped
//               _scaffoldKey.currentState!.openEndDrawer();
//             },
//           ),
//         ],
//         title: Text('Teacher Selection'),
//       ),
//       endDrawer: Drawer(
//         child: Container(
//           color: Colors.amber.shade100,
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade700,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     FutureBuilder<User?>(
//                       future: FirebaseAuth.instance.currentUser,
//                       builder: (context, snapshot) {
//                         if (snapshot.connectionState == ConnectionState.done) {
//                           if (snapshot.data != null) {
//                             return Column(
//                               children: [
//                                 CircleAvatar(
//                                   radius: 40,
//                                   backgroundImage: snapshot.data!.photoURL != null
//                                       ? NetworkImage(snapshot.data!.photoURL!)
//                                       : AssetImage('assets/profile_photo.jpg') as ImageProvider,
//                                 ),
//                                 SizedBox(height: 8),
//                                 Text(
//                                   snapshot.data!.displayName ?? 'John Doe',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 ),
//                               ],
//                             );
//                           }
//                         }
//                         return SizedBox.shrink();
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 title: Text('Edit Profile'),
//                 onTap: () {
//                   // Handle edit profile action
//                 },
//               ),
//               ListTile(
//                 title: Text('Settings'),
//                 onTap: () {
//                   // Handle settings action
//                 },
//               ),
//               ListTile(
//                 title: Text('Logout'),
//                 onTap: () {
//                   // Handle logout action
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('teachers').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final List<Teacher> teachers = snapshot.data!.docs.map((doc) {
//               return Teacher.fromMap(doc.data() as Map<String, dynamic>);
//             }).toList();
//
//             return ListView.builder(
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               itemCount: teachers.length,
//               itemBuilder: (context, index) {
//                 return TeacherCard(
//                   teacherName: teachers[index].name,
//                   teacherPhoto: teachers[index].photoUrl,
//                   teacherPost: teachers[index].post,
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => TeacherInfoPage(
//                           teacherName: teachers[index].name,
//                           teacherPhoto: teachers[index].photoUrl,
//                           teacherPost: teachers[index].post,
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }
//
// class TeacherCard extends StatelessWidget {
//   final String teacherName;
//   final String teacherPhoto;
//   final String teacherPost;
//   final VoidCallback onTap;
//
//   TeacherCard({
//     required this.teacherName,
//     required this.teacherPhoto,
//     required this.teacherPost,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         color: Colors.amber.shade100,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 100, // Set a fixed height for the teacher card
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage(teacherPhoto),
//                   radius: 30,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         teacherName,
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         teacherPost,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//       ),
//     );
//   }
// }

// import 'package:demopro/screens/department_selection_screen.dart';
// import 'package:demopro/screens/teacher_information_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class TeacherSelectionPage extends StatefulWidget {
//   @override
//   _TeacherSelectionPageState createState() => _TeacherSelectionPageState();
// }
//
// class _TeacherSelectionPageState extends State<TeacherSelectionPage> {
//   late User? _user;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     _user = FirebaseAuth.instance.currentUser;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade200,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DepartmentSelectionPage()),
//             );
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () {
//               _scaffoldKey.currentState!.openEndDrawer();
//             },
//           ),
//         ],
//         title: Text('Teacher Selection'),
//       ),
//       endDrawer: buildUserDrawer(context, _user, _scaffoldKey),
//       body: Container(
//         color: Colors.grey.shade200, // Grey background color
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Add padding
//           children: [
//             TeacherCard(
//               teacherName: 'S.U. Mane',
//               teacherPhoto: 'assets/ritlogo.png', // Replace with teacher photo
//               teacherPost: 'HOD',
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => TeacherInfoPage(
//                       teacherName: 'S.U. Mane',
//                       teacherPhoto: 'assets/S.U.Mane.jpeg', // Replace with teacher's profile photo
//                       teacherPost: 'HOD',
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ]
//         )
//       )
//     );
//   }
// }
//
// class TeacherCard extends StatelessWidget {
//   final String teacherName;
//   final String teacherPhoto;
//   final String teacherPost;
//   final VoidCallback onTap;
//
//   TeacherCard({
//     required this.teacherName,
//     required this.teacherPhoto,
//     required this.teacherPost,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         color: Colors.amber.shade100,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 100,
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage(teacherPhoto),
//                   radius: 30,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         teacherName,
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         teacherPost,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//       ),
//     );
//   }
// }
//
// Widget buildUserDrawer(BuildContext context, User? user, GlobalKey<ScaffoldState> scaffoldKey) {
//   return Drawer(
//     child: Container(
//       color: Colors.amber.shade100,
//       child: FutureBuilder<DocumentSnapshot>(
//         future: FirebaseFirestore.instance.collection('users').doc(user!.uid).get(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             var userData = snapshot.data!.data() as Map<String, dynamic>;
//             var name = userData['name'] as String;
//             var email = userData['email'] as String;
//
//             return ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 DrawerHeader(
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade700,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CircleAvatar(
//                         radius: 35,
//                         backgroundImage: AssetImage('assets/profile_photo.jpg'),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         name,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         email,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ListTile(
//                   title: Text('Edit Profile'),
//                   onTap: () {
//                     // Handle edit profile action
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Settings'),
//                   onTap: () {
//                     // Handle settings action
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Logout'),
//                   onTap: () {
//                     // Handle logout action
//                   },
//                 ),
//               ],
//             );
//           }
//         },
//       ),
//     ),
//   );
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: TeacherSelectionPage(),
//   ));
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demopro/screens/teacher_information_screen_stu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TeacherSelectionPage extends StatefulWidget {
  final String departmentName;

  TeacherSelectionPage({required this.departmentName});

  @override
  _TeacherSelectionPageState createState() => _TeacherSelectionPageState();
}

class _TeacherSelectionPageState extends State<TeacherSelectionPage> {
  TextEditingController _searchController = TextEditingController();
  late List<DocumentSnapshot> _teachers;
  late List<DocumentSnapshot> _filteredTeachers = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    _fetchTeachers();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _fetchTeachers() {
    FirebaseFirestore.instance.collection(widget.departmentName).get().then((snapshot) {
      setState(() {
        _teachers = snapshot.docs;
        _filteredTeachers = _teachers;
      });
    }).catchError((error) {
      print('Error fetching teachers: $error');
    });
  }

  void _onSearchChanged() {
    String query = _searchController.text.trim().toLowerCase();
    setState(() {
      _filteredTeachers = _teachers.where((teacher) {
        String teacherName = teacher['name'].toLowerCase();
        return teacherName.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Selection'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: UserDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by teacher name',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: _filteredTeachers.isEmpty
                ? Center(child: Text('No teachers found'))
                : ListView.builder(
              itemCount: _filteredTeachers.length,
              itemBuilder: (context, index) {
                var teacherData = _filteredTeachers[index].data() as Map<String, dynamic>;
                var teacherId = _filteredTeachers[index].id;
                return TeacherCard(
                  teacherName: teacherData['name'],
                  teacherPost: teacherData['post'],
                  teacherId: teacherId,
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
class TeacherCard extends StatelessWidget {
  final String teacherName;
  final String teacherPost;
  final String teacherId;

  TeacherCard({
    required this.teacherName,
    required this.teacherPost,
    required this.teacherId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TeacherInfoPage(teacherId: teacherId),
          ),
        );
      },
      child: Card(
        color: Colors.amber.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        teacherName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        teacherPost,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User? currentUser = FirebaseAuth.instance.currentUser;

    return Drawer(
      child: Container(
        color: Colors.amber.shade100,
        child: FutureBuilder<DocumentSnapshot>(
          future: FirebaseFirestore.instance.collection('Susers').doc(currentUser!.uid).get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              var userData = snapshot.data!.data() as Map<String, dynamic>;
              var name = userData['name'] as String;
              var email = userData['email'] as String;

              return ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/profile_photo.jpg'), // Replace with user's profile photo
                        ),
                        SizedBox(height: 8),
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          email,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit Profile'),
                    onTap: () {
                      // Handle edit profile action
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      // Handle settings action
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                    onTap: () {
                      // Handle logout action
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class TeacherInfoSPage extends StatelessWidget {
  final String teacherId;

  TeacherInfoSPage({
    required this.teacherId,
  });

  @override
  Widget build(BuildContext context) {
    // Implement teacher information page UI
    return Scaffold();
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: TeacherSelectionPage(),
//   ));
// }
