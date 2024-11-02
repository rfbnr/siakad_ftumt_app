import 'package:flutter/material.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../forgot_password/screens/forgot_password_screen.dart';
import '../../home/screens/home_screen.dart';
import '../../register/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool showPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceHeight(40),
              Image.asset(
                "assets/images/logo-umt.png",
                height: 100,
              ),
              const SpaceHeight(10.0),
              const Text(
                "SIAKAD FTUMT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "Sistem Akademik",
                textAlign: TextAlign.center,
              ),
              const SpaceHeight(40.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  controller: emailController,
                  label: "Username",
                  keyboardType: TextInputType.text,
                ),
              ),
              const SpaceHeight(20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
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
              ),
              const SpaceHeight(54.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ButtonPrimary(
                  backgroundColor: Colors.orange,
                  titleButton: "Masuk",
                  width: double.infinity,
                  onPressed: () {
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2),
                          content: Text(
                            "Username dan Password tidak boleh kosong",
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
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => false,
                          );
                        }
                      },
                    );
                  },
                ),
              ),
              const SpaceHeight(16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const RegisterScreen();
                            },
                          ),
                        );
                      },
                      child: const Text.rich(
                        TextSpan(
                          text: "Belum punya akun? ",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: "Daftar",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const ForgotPasswordScreen();
                          }),
                        );
                      },
                      child: const Text(
                        "Lupa Password",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
