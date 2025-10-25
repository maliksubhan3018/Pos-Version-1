import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final TextEditingController? controller;
  final bool obscureText;
  final bool isPassword;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.label,
    this.placeholder,
    this.controller,
    this.obscureText = false,
    this.isPassword = false,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 2),
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            validator: validator,
            style: const TextStyle(fontSize: 14, height: 2.8),
            decoration: InputDecoration(
              hintText: placeholder ?? '',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              isDense: true, // reduces default vertical padding
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6, // smaller vertical padding
              ),
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
