import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posversion1/config/route_name.dart';
import 'package:posversion1/widgets/app_bar.dart';
import 'package:posversion1/widgets/button.dart';
import 'package:posversion1/widgets/text_form_field.dart';
import 'package:posversion1/widgets/upload_field.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _fullNameController = TextEditingController();
  final _designationController = TextEditingController();
  final _contactController = TextEditingController();
  final _emailController = TextEditingController();
  XFile? _profileImage;

  Future<void> _pickProfileImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _profileImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[30],
      appBar: CustomAppBar(title: 'Personal Info'),
      body: Padding(
        padding: EdgeInsets.all(9),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, size: 30, color: Colors.grey),
            ),
            SizedBox(height: 6),
            Text(
              'Personal Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'You can add personal details to\n strengthen the POS store profile.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 20),
            CustomTextField(
              label: 'Store Full Name',
              placeholder: 'Placeholder',
              controller: _fullNameController,
            ),
            CustomTextField(
              label: 'Store Designation',
              placeholder: 'Placeholder',
              controller: _designationController,
            ),
            CustomTextField(
              label: 'Contact Number',
              placeholder: 'Placeholder',
              keyboardType: TextInputType.phone,
              controller: _contactController,
            ),
            CustomTextField(
              label: 'Email',
              placeholder: 'Placeholder',
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            CustomUploadField(
              label: 'Profile Picture',
              placeholder: 'Placeholder',
              image: _profileImage,
              onTap: _pickProfileImage,
            ),
            CustomButton(
              text: 'Next',
              onPressed: () {
                Get.toNamed(MyPagesName.storeProfile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
