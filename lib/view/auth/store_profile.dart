// lib/pages/store_profile.dart
import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posversion1/config/route_name.dart';
import 'package:posversion1/widgets/custom_app_bar.dart';
import 'package:posversion1/widgets/custom_button.dart';
import 'package:posversion1/widgets/custom_dropdown.dart';
import 'package:posversion1/widgets/custom_text_field.dart';
import 'package:posversion1/widgets/custom_upload_field.dart';

class StoreProfile extends StatefulWidget {
  const StoreProfile({super.key});

  @override
  State<StoreProfile> createState() => _StoreProfileState();
}

class _StoreProfileState extends State<StoreProfile> {
  final _fullNameController = TextEditingController();
  final _shortNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  String? _selectedCategory;
  XFile? _logoImage;

  Future<void> _pickLogoImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _logoImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: const CustomAppBar(title: 'Create POS Store'),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.store, size: 30, color: Colors.grey),
            ),
            const SizedBox(height: 9),
            const Text(
              "Let's Create Your New POS Store",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'You can Create your own POS store to\n manage all in POS store access.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: 'Store Full Name',
                    placeholder: 'Placeholder',
                    controller: _fullNameController,
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: CustomTextField(
                    label: 'Short Name',
                    placeholder: 'AA',
                    controller: _shortNameController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            CustomDropdown(
              label: 'Category',
              placeholder: 'Placeholder',
              items: ['Retail', 'Grocery', 'Electronics', 'Other'],
              value: _selectedCategory,
              onChanged: (value) => setState(() => _selectedCategory = value),
            ),
            const SizedBox(height: 4),
            CustomTextField(
              label: 'Phone',
              placeholder: 'Placeholder',
              keyboardType: TextInputType.phone,
              controller: _phoneController,
            ),
            const SizedBox(height: 4),
            CustomTextField(
              label: 'Address',
              placeholder: 'Placeholder',
              keyboardType: TextInputType.streetAddress,
              controller: _addressController,
            ),
            const SizedBox(height: 4),
            CustomUploadField(
              label: 'Logo',
              placeholder: 'Placeholder',
              image: _logoImage,
              onTap: _pickLogoImage,
            ),
            const SizedBox(height: 4),
            CustomButton(
              text: 'Next',
              onPressed: () {
                Get.toNamed(MyPagesName.setSecurity);
              },
            ),
          ],
        ),
      ),
    );
  }
}
