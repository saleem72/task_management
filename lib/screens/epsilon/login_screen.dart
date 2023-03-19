//

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Login'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppTextField(
                hint: 'Email',
                backgroundColor: Colors.grey.shade400,
                suffixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppTextField(
                hint: 'Password',
                backgroundColor: Colors.grey.shade400,
                suffixIcon: const Icon(Icons.search),
                isSecure: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.hint = '',
    this.backgroundColor = Colors.white,
    this.suffixIcon,
    this.isSecure = false,
  });
  final TextEditingController? controller;
  final String hint;
  final Color backgroundColor;
  final Widget? suffixIcon;
  final bool isSecure;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          isDense: false,
          suffixIcon: Container(
            color: Colors.green,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isSecure ? _secureButton() : const SizedBox.shrink(),
                suffixIcon != null ? suffixIcon! : const SizedBox.shrink(),
                isSecure ? const SizedBox(width: 12) : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconButton _secureButton() {
    return IconButton(
        onPressed: () {}, icon: const Icon(Icons.remove_red_eye_outlined));
  }
}
