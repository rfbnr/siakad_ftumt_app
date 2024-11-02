import 'package:flutter/material.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../login/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final nimController = TextEditingController();
  final passwordController = TextEditingController();

  bool showPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text(
          "Registrasi Akun",
          style: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SpaceHeight(20.0),
          const Text(
            "Lengkapi isian dibawah ini dengan benar.",
            style: TextStyle(
              color: AppColors.black,
            ),
          ),
          const Text(
            "Pendaftaran akun hanya diperuntukan untuk mahasiswa, untuk dosen silahkan hubungi admin.",
            style: TextStyle(
              color: AppColors.black,
            ),
          ),
          const SpaceHeight(40.0),
          CustomTextField(
            controller: nameController,
            label: "Nama Lengkap",
          ),
          const SpaceHeight(20.0),
          CustomTextField(
            controller: emailController,
            label: "Email",
            keyboardType: TextInputType.emailAddress,
          ),
          const SpaceHeight(20.0),
          CustomTextField(
            controller: nimController,
            label: "Nomor Induk Mahasiswa",
            keyboardType: TextInputType.number,
          ),
          const SpaceHeight(20.0),
          CustomTextField(
            controller: passwordController,
            label: "Password",
            obscureText: showPassword,
            suffixIcon: IconButton(
              icon: Icon(
                showPassword ? Icons.visibility : Icons.visibility_off,
                color: AppColors.grey,
              ),
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
          ),
          const SpaceHeight(54.0),
          ButtonPrimary(
            backgroundColor: Colors.orange,
            titleButton: "Daftar Akun",
            width: double.infinity,
            onPressed: () {
              if (nameController.text.isEmpty ||
                  emailController.text.isEmpty ||
                  nimController.text.isEmpty ||
                  passwordController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.red,
                    content: Text(
                      "Mohon lengkapi semua isian.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
                return;
              }

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Mohon tunggu sebentar..."),
                ),
              );

              Future.delayed(
                const Duration(seconds: 3),
                () {
                  if (context.mounted) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (route) => false,
                    );
                  }
                },
              );
            },
          ),
          const SpaceHeight(20.0),
        ],
      ),
    );
  }
}
