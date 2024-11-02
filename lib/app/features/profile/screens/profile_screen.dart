import 'package:flutter/material.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../login/screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.white,
          elevation: 0,
          forceMaterialTransparency: true,
          title: const Text(
            "Profile",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary,
                    AppColors.yellow,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: AppColors.grey.withOpacity(0.6),
                    child: const Icon(
                      Icons.person,
                      size: 120,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SpaceHeight(10),
                const Text(
                  "Ridwan Febnur Asri Redinda",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "2255201098",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
                const SpaceHeight(60),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Column(
                    children: [
                      DetailDataAccountWidget(
                        title: "Email",
                        value: "sampleridwan@gmail.com",
                      ),
                      SpaceHeight(10),
                      DetailDataAccountWidget(
                        title: "Handphone",
                        value: "0813xxxxxxxx",
                      ),
                      SpaceHeight(10),
                      DetailDataAccountWidget(
                        title: "Program Studi",
                        value: "Teknik Informatika",
                      ),
                      SpaceHeight(10),
                      DetailDataAccountWidget(
                        title: "Semester",
                        value: "7 (tujuh)",
                      ),
                      SpaceHeight(10),
                    ],
                  ),
                ),
                const SpaceHeight(40),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ButtonPrimary(
                    titleButton: "Logout",
                    width: double.infinity,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Anda telah logout."),
                        ),
                      );

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class DetailDataAccountWidget extends StatelessWidget {
  const DetailDataAccountWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
