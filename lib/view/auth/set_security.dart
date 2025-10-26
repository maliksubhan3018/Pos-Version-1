// lib/pages/set_security.dart
import 'package:flutter/material.dart';
import 'package:get/Get.dart';
import 'package:posversion1/config/route_name.dart';
import 'package:posversion1/widgets/custom_app_bar.dart';
import 'package:posversion1/widgets/custom_button.dart';
import 'package:posversion1/widgets/custom_dropdown.dart';
import 'package:posversion1/widgets/custom_text_field.dart';
import 'package:posversion1/widgets/password_suffix.dart';

class SetSecurity extends StatefulWidget {
  const SetSecurity({super.key});

  @override
  State<SetSecurity> createState() => _SetSecurityState();
}

class _SetSecurityState extends State<SetSecurity> {
  final _secretPinController = TextEditingController();
  final _confirmPinController = TextEditingController();
  final _answerController = TextEditingController();
  bool _obscureSecret = true;
  bool _obscureConfirm = true;
  String? _selectedQuestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[40],
      appBar: CustomAppBar(title: 'Set Security'),
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
              child: Icon(Icons.lock, size: 30, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'App Login Secret Key',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'You can login using secret PIN to secure your POS store access.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Secret PIN',
              placeholder: '****',
              controller: _secretPinController,
              obscureText: _obscureSecret,
              isPassword: true,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: PasswordSuffix(
                obscureText: _obscureSecret,
                onToggle: () =>
                    setState(() => _obscureSecret = !_obscureSecret),
              ),
            ),
            CustomTextField(
              label: 'Confirm PIN',
              placeholder: '****',
              controller: _confirmPinController,
              obscureText: _obscureConfirm,
              isPassword: true,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: PasswordSuffix(
                obscureText: _obscureConfirm,
                onToggle: () =>
                    setState(() => _obscureConfirm = !_obscureConfirm),
              ),
            ),
            CustomDropdown(
              label: 'Recovery Question',
              placeholder: 'Placeholder',
              value: _selectedQuestion,
              items: [],
              onChanged: (value) => setState(() => _selectedQuestion = value),
            ),
            CustomTextField(
              label: 'Answer',
              placeholder: 'Placeholder',
              controller: _answerController,
            ),
            CustomButton(
              text: 'Submit',
              isSubmit: true,
              onPressed: () {
                showDialog(
                  context: context,
                  barrierColor: Colors.black54,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    content: SizedBox(
                      width: 400,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 80,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Welcome to Store POS',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Help you manage your inventory in offline App.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            text: 'Continue',
                            onPressed: () {
                              Get.toNamed(MyPagesName.login);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
