import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CustomUploadField extends StatelessWidget {
  final String label;
  final String? placeholder;
  final XFile? image;
  final VoidCallback? onTap;

  const CustomUploadField({
    super.key,
    required this.label,
    this.placeholder,
    this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
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
          const SizedBox(height: 1),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              height: 42, // smaller height for compact look
              decoration: BoxDecoration(
                color: Colors.white, // no border, just plain white background
                borderRadius: BorderRadius.circular(6),
              ),
              child: image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.file(
                        File(image!.path),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.upload,
                            color: Colors.grey.shade500,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              placeholder ?? 'Upload Image',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
