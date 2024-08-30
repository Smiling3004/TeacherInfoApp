// import 'package:flutter/material.dart';
// import 'teacher_selection_screen.dart'; // Import the teacher selection screen file
//
// class TeacherInfoPage extends StatelessWidget {
//   final String teacherName;
//   final String teacherPhoto;
//   final String teacherPost;
//
//   TeacherInfoPage({
//     required this.teacherName,
//     required this.teacherPhoto,
//     required this.teacherPost,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade100,
//         title: Text(teacherName),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => TeacherSelectionPage()),
//             ); // Navigate back to previous screen
//           },
//         ),
//       ),
//       backgroundColor: Colors.grey.shade100,
//       body: ListView(
//         padding: EdgeInsets.all(16.0),
//         children: [
//           // Profile Card
//           _buildAnimatedCard(
//             color: Colors.amber.shade100,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center, // Aligns children in the center vertically
//                 crossAxisAlignment: CrossAxisAlignment.center, // Aligns children in the center horizontally
//                 children: [
//                   CircleAvatar(
//                     backgroundImage: AssetImage('assets/ritlogo.png'), // Use the provided teacher photo
//                     radius: 50,
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     teacherName, // Use the provided teacher name
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                       fontFamily: 'Poppins',
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Colors.grey.shade500, // Background color of the circle
//                         child:  IconButton(
//                           icon: Icon(Icons.call),
//                           color: Colors.white, // Color of the icon
//                           onPressed: () {
//                             showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text('Teacher Phone No.'),
//                                   content: TextField(
//                                     readOnly: true,
//                                     decoration: InputDecoration(
//                                       hintText: '9930100267', // Replace with the actual email of the teacher
//                                     ),
//                                   ),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text('Close',style: TextStyle(color: Colors.amber.shade900),),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(width: 8.0),
//                       CircleAvatar(
//                         backgroundColor: Colors.grey.shade500, // Background color of the circle
//                         child: IconButton(
//                           icon: Icon(Icons.message),
//                           color: Colors.white, // Color of the icon
//                           onPressed: () {
//                             showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text('Teacher Message'),
//                                   content: TextField(
//                                     readOnly: true,
//                                     decoration: InputDecoration(
//                                       hintText: '9930100267', // Replace with the actual email of the teacher
//                                     ),
//                                   ),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text('Close',style: TextStyle(color: Colors.amber.shade900),),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(width: 8.0),
//                       CircleAvatar(
//                         backgroundColor: Colors.grey.shade500, // Background color of the circle
//                         child: IconButton(
//                           icon: Icon(Icons.email),
//                           color: Colors.white, // Color of the icon
//                           onPressed: () {
//                             showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text('Teacher Email'),
//                                   content: TextField(
//                                     readOnly: true,
//                                     decoration: InputDecoration(
//                                       hintText: 'sandip.mane@ritindia.edu', // Replace with the actual email of the teacher
//                                     ),
//                                   ),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text('Close',style: TextStyle(color: Colors.amber.shade900),),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                       SizedBox(width: 8.0),
//                       CircleAvatar(
//                         backgroundColor: Colors.grey.shade500, // Background color of the circle
//                         child:  IconButton(
//                           icon: Icon(Icons.link),
//                           color: Colors.white, // Color of the icon
//                           onPressed: () {
//                             showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text('Teacher LinkedIn'),
//                                   content: TextField(
//                                     readOnly: true,
//                                     decoration: InputDecoration(
//                                       hintText: 'sandip.mane@ritindia.edu', // Replace with the actual email of the teacher
//                                     ),
//                                   ),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: Text('Close',style: TextStyle(color: Colors.amber.shade900),),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//
//           // Education Card
//           _buildAnimatedCard(
//             color: Colors.amber.shade100,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildCardTitle('Education'),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Degree: PhD in Computer Science\nWorking since: YYYY\nResearch Area: Soft Computing,Many/Multi-objective Optimization Problems,High Performance Computing,GPU Computing',
//                     // Replace with actual education details
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//
//           // Cabin Location Card
//           _buildAnimatedCard(
//             color: Colors.amber.shade100,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildCardTitle('Cabin Location'),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Building A, Room 101', // Replace with actual cabin location
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//
//           // Allocated Class-Subject Card
//           _buildAnimatedCard(
//             color: Colors.amber.shade100,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildCardTitle('Allocated Class-Subject'),
//                   SizedBox(height: 8.0),
//                   DataTable(
//                     columns: [
//                       DataColumn(label: Text('Class')),
//                       DataColumn(label: Text('Th/Pr')), // Adjusted label for Theory/Practical
//                       DataColumn(label: Text('Subject')),
//                     ],
//                     rows: [
//                       DataRow(cells: [
//                         DataCell(Text('T.Y.B')),
//                         DataCell(Text('Th')), // Adjusted text for Theory
//                         DataCell(Text('Software Engineering')),
//                       ]),
//                       DataRow(cells: [
//                         DataCell(Text('PE-VI')),
//                         DataCell(Text('Pr')), // Adjusted text for Practical
//                         DataCell(Text('Optimization Technique')),
//                       ]),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//
//           // Research Findings Card
//           _buildAnimatedCard(
//             color: Colors.amber.shade100,
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildCardTitle('Key Research Projects'),
//                   SizedBox(height: 8.0),
//                   Text(
//                     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ac convallis odio, nec consequat nisi. Donec sit amet fermentum sapien.',
//                     // Replace with actual research findings
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildAnimatedCard({required Color color, required Widget child}) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 500),
//       curve: Curves.easeIn,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.0),
//         color: color,
//       ),
//       child: child,
//     );
//   }
//
//   Widget _buildCardTitle(String title) {
//     return Column(
//       children: [
//         Container(
//           width: double.infinity,
//           color: Colors.grey.shade500,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             child: Text(
//               title,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//                 fontFamily: 'Poppins',
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: 8.0),
//         Divider(),
//       ],
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:permission_handler/permission_handler.dart';

class TeacherInfoPage extends StatefulWidget {
  final String departmentName;

  TeacherInfoPage({
    required this.departmentName,
  });

  @override
  _TeacherInfoPageState createState() => _TeacherInfoPageState();
}

class _TeacherInfoPageState extends State<TeacherInfoPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _postController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _linkedinController;
  late TextEditingController _degreeController;
  late TextEditingController _workingSinceController;
  late TextEditingController _researchAreaController;
  late TextEditingController _cabinLocationController;
  List<Map<String, String>> _allocatedSubjects = [];
  List<Map<String, String>> _researchProjects = [];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _postController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _linkedinController = TextEditingController();
    _degreeController = TextEditingController();
    _workingSinceController = TextEditingController();
    _researchAreaController = TextEditingController();
    _cabinLocationController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _postController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _linkedinController.dispose();
    _degreeController.dispose();
    _workingSinceController.dispose();
    _researchAreaController.dispose();
    _cabinLocationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Teacher Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              // Teacher Name
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Teacher Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the teacher name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Teacher Post
              TextFormField(
                controller: _postController,
                decoration: InputDecoration(labelText: 'Teacher Post'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the teacher post';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Teacher Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Teacher Email'),
                validator: (value) {
                  // You can add more validation rules for email here
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Teacher Phone Number
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Teacher Phone Number'),
                validator: (value) {
                  // You can add more validation rules for phone number here
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Teacher LinkedIn Link
              TextFormField(
                controller: _linkedinController,
                decoration: InputDecoration(labelText: 'Teacher LinkedIn Link'),
                validator: (value) {
                  // You can add more validation rules for LinkedIn link here
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              // Education Details
              TextFormField(
                controller: _degreeController,
                decoration: InputDecoration(labelText: 'Degree'),
              ),
              TextFormField(
                controller: _workingSinceController,
                decoration: InputDecoration(labelText: 'Working Since'),
              ),
              TextFormField(
                controller: _researchAreaController,
                decoration: InputDecoration(labelText: 'Research Area'),
              ),
              SizedBox(height: 16.0),
              // Cabin Location
              TextFormField(
                controller: _cabinLocationController,
                decoration: InputDecoration(labelText: 'Cabin Location'),
              ),
              SizedBox(height: 16.0),
              // Allocated Subjects and Classes
              ElevatedButton(
                onPressed: () {
                  _addAllocatedSubject();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
                child: Text('Add Allocated Subject'),
              ),
              SizedBox(height: 8.0),
              ..._allocatedSubjects.map((subject) {
                return ListTile(
                  title: Text(subject['class'] ?? ''),
                  subtitle: Text(subject['subject'] ?? ''),
                );
              }),
              SizedBox(height: 16.0),
              // Key Research Projects
              ElevatedButton(
                onPressed: () {
                  _addResearchProject();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                ),
                child: Text('Add Key Research Project'),
              ),
              SizedBox(height: 8.0),
              ..._researchProjects.map((project) {
                return ListTile(
                  title: Text(project['title'] ?? ''),
                  subtitle: Text(project['description'] ?? ''),
                );
              }),
              SizedBox(height: 16.0),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _saveTeacherInfo();
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }


  // Function to add allocated subject
  void _addAllocatedSubject() {
    showDialog(
      context: context,
      builder: (context) {
        String classValue = '';
        String subjectValue = '';

        return AlertDialog(
          title: Text('Add Allocated Subject'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                onChanged: (value) {
                  classValue = value;
                },
                decoration: InputDecoration(labelText: 'Class'),
              ),
              TextFormField(
                onChanged: (value) {
                  subjectValue = value;
                },
                decoration: InputDecoration(labelText: 'Subject'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _allocatedSubjects.add({'class': classValue, 'subject': subjectValue});
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  // Function to add research project
  void _addResearchProject() {
    showDialog(
      context: context,
      builder: (context) {
        String titleValue = '';
        String descriptionValue = '';

        return AlertDialog(
          title: Text('Add Key Research Project'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                onChanged: (value) {
                  titleValue = value;
                },
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextFormField(
                onChanged: (value) {
                  descriptionValue = value;
                },
                decoration: InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _researchProjects.add({'title': titleValue, 'description': descriptionValue});
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  // Function to save teacher information to Firestore
  void _saveTeacherInfo() {
    // Get values from text controllers
    String teacherName = _nameController.text;
    String teacherPost = _postController.text;
    String teacherEmail = _emailController.text;
    String teacherPhone = _phoneController.text;
    String teacherLinkedin = _linkedinController.text;
    String degree = _degreeController.text;
    String workingSince = _workingSinceController.text;
    String researchArea = _researchAreaController.text;
    String cabinLocation = _cabinLocationController.text;

    // Save to Firestore under the respective department collection
    FirebaseFirestore.instance.collection(widget.departmentName).add({
      'name': teacherName,
      'post': teacherPost,
      'email': teacherEmail,
      'phone': teacherPhone,
      'linkedin': teacherLinkedin,
      'education': {
        'degree': degree,
        'workingSince': workingSince,
        'researchArea': researchArea,
      },
      'cabinLocation': cabinLocation,
      'allocatedSubjects': _allocatedSubjects,
      'researchProjects': _researchProjects,
    }).then((_) {
      // Show success message or navigate to another screen
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Teacher information saved successfully'),
      ));
    }).catchError((error) {
      // Handle errors
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to save teacher information: $error'),
      ));
    });
  }

  Future<void> _requestPermission() async {
    if (await Permission.storage.request().isGranted) {
      // Permission is granted, proceed with file picking
    } else {
      // Permission denied, handle accordingly
    }
  }
}
