import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TeacherInfoPage extends StatelessWidget {
  final String teacherId;

  TeacherInfoPage({
    required this.teacherId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance.collection('Computer Engineering').doc(teacherId).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('Loading...');
            } else if (snapshot.hasError) {
              return Text('Error');
            } else {
              var teacherData = snapshot.data!.data() as Map<String, dynamic>;
              return Text(teacherData['name']); // Display teacher's name in the app bar
            }
          },
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('Computer Engineering').doc(teacherId).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            var teacherData = snapshot.data!.data() as Map<String, dynamic>;
            return ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                _buildProfileCard(
                  context,
                  teacherData['name'],
                  teacherData['email'],
                  teacherData['linkedin'],
                  teacherData['phone'],
                ),
                _buildCard('Post', teacherData['post']),
                _buildCard('Degree', teacherData['education']['degree']),
                _buildCard('Working Since', teacherData['education']['workingSince']),
                _buildCard('Research Area', teacherData['education']['researchArea']),
                _buildCard('Cabin Location', teacherData['cabinLocation']),
                //_buildTitle('Allocated Subjects'),
                _buildAllocatedSubjects(teacherData['allocatedSubjects']),
                //_buildTitle('Research Projects'),
                _buildResearchProjects(teacherData['researchProjects']),
              ],
            );
          }
        },
      ),
    );
  }


  Widget _buildCard(String title, String value) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildProfileCard(BuildContext context, String teacherName, String email, String linkedIn, String mobileNumber) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  teacherName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.email),
                      onPressed: () {
                        _showDialog(context, 'Email', email);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.phone),
                      onPressed: () {
                        _showDialog(context, 'Mobile Number', mobileNumber);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.link),
                      onPressed: () {
                        _showDialog(context, 'LinkedIn', linkedIn);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String value) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(value),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _buildAllocatedSubjects(List<dynamic> subjects) {
    List<DataRow> rows = [];
    for (var subject in subjects) {
      rows.add(
        DataRow(cells: [
          DataCell(Text(subject['class'] ?? '')),
          DataCell(Text(subject['subject'] ?? '')),
        ]),
      );
    }
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('Allocated Subjects'),
            DataTable(
              columns: [
                DataColumn(label: Text('Class')),
                DataColumn(label: Text('Subject')),
              ],
              rows: rows,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResearchProjects(List<dynamic> projects) {
    List<Widget> widgets = [];
    for (var project in projects) {
      widgets.add(
        _buildCard(
          project['title'] ?? '',
          project['description'] ?? '',
        ),
      );
    }
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('Research Projects'),
            Column(
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TeacherInfoPage(teacherId: 'teacherId'), // Provide the teacher ID here
  ));
}
