import 'package:demopro/screens/teacher_information_screen.dart';
import 'package:demopro/screens/teacher_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DepartmentSelectionSPage extends StatefulWidget {
  @override
  _DepartmentSelectionPageState createState() => _DepartmentSelectionPageState();
}

class _DepartmentSelectionPageState extends State<DepartmentSelectionSPage> {
late User? _user;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Define GlobalKey

@override
void initState() {
  super.initState();
  _user = FirebaseAuth.instance.currentUser;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/ritlogo.png', // Replace with actual RIT logo
            width: 40,
            height: 40,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
          ),
        ],
        title: Text('Department Selection'),
      ),
      endDrawer: buildUserDrawer(context, _user, _scaffoldKey),
      body: Container(
        color: Colors.grey.shade200, // Grey background color
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Computer Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the TeacherSelectionPage with the selected department name
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Computer Engineering'),
                    ),
                  );
                },


              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Information Technology',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Information Technology'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Artificial Intelligence & Machine Learning',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Artificial Intelligence & Machine Learning'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Electronics & Telecommunication Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Electronics & Telecommunication Engineering'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Electrical Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Electrical Engineering'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Mechanical Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Mechanical Engineering'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Mechatronics Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Mechatronics Engineering'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Automobile Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Automobile Engineering'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Civil Engineering',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Civil Engineering'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DepartmentCard(
                departmentName: 'Robotics and Automation',
                departmentLogo: 'assets/cse_logo.jpg', // Replace with CSE logo
                onTap: () {
                  // Implement navigation to the particular department page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherSelectionPage(departmentName: 'Robotics and Automation'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToDepartmentPage(BuildContext context, String departmentName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DepartmentPage(departmentName: departmentName),
      ),
    );
  }
}

class DepartmentCard extends StatelessWidget {
  final String departmentName;
  final String departmentLogo;
  final VoidCallback onTap;

  DepartmentCard({required this.departmentName, required this.departmentLogo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.amber.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 80, // Set a fixed width for the department card
            height: 80, // Set a fixed height for the department card
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(departmentLogo),
                  radius: 25,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    departmentName,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                    overflow: TextOverflow.ellipsis, // Handle overflow if the text is too long
                    maxLines: 2, // Limit the number of lines to 2
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

class DepartmentPage extends StatelessWidget {
  final String departmentName;

  DepartmentPage({required this.departmentName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(departmentName),
      ),
      body: Center(
        child: Text('Department Page: $departmentName'),
      ),
    );
  }
}
Widget buildUserDrawer(BuildContext context, User? user, GlobalKey<ScaffoldState> scaffoldKey) {
  return Drawer(
    child: Container(
      color: Colors.amber.shade100,
      child: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('Susers').doc(user!.uid).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            var userData = snapshot.data!.data() as Map<String, dynamic>; // Cast userData to Map<String, dynamic>
            var name = userData['name'] as String; // Access 'name' field as String
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
                        name, // Use user's name fetched from Firestore
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        email, // Use user's email fetched from Firestore
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
                  title: Text('Edit Profile'),
                  onTap: () {
                    // Handle edit profile action
                  },
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    // Handle settings action
                  },
                ),
                ListTile(
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

void main() {
  runApp(MaterialApp(
    home: DepartmentSelectionSPage(),
  ));
}