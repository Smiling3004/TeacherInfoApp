import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final String departmentName;
  final String teacherId;

  EditProfilePage({
    required this.departmentName,
    required this.teacherId,
  });

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _postController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _postController = TextEditingController();
    _fetchTeacherData();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _postController.dispose();
    super.dispose();
  }

  void _fetchTeacherData() {
    FirebaseFirestore.instance
        .collection(widget.departmentName)
        .doc(widget.teacherId)
        .get()
        .then((docSnapshot) {
      if (docSnapshot.exists) {
        setState(() {
          var data = docSnapshot.data();
          _nameController.text = data?['name'];
          _postController.text = data?['post'];
        });
      }
    }).catchError((error) {
      print("Error fetching teacher data: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
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
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _updateTeacherInfo();
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

  void _updateTeacherInfo() {
    String teacherName = _nameController.text;
    String teacherPost = _postController.text;

    FirebaseFirestore.instance
        .collection(widget.departmentName)
        .doc(widget.teacherId)
        .update({
      'name': teacherName,
      'post': teacherPost,
    }).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Teacher information updated successfully'),
      ));
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to update teacher information: $error'),
      ));
    });
  }
}
