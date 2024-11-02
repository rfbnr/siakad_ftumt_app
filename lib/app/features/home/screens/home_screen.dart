import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../khs/screens/khs_screen.dart';
import '../../krs/screens/krs_screen.dart';
import '../../payment/screens/payment_screen.dart';
import '../../profile/screens/profile_screen.dart';
import '../../tugas_akhir/screens/tugas_akhir_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: 0,
              left: 0,
              child: Image.asset(
                "assets/images/gedung-umt.png",
                fit: BoxFit.cover,
                height: 540,
                // width: 500,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SpaceHeight(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/logo-umt.png",
                            height: 30,
                          ),
                          const SpaceWidth(10),
                          const Text(
                            "SIAKAD FT",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.blue[800],
                          ),
                          const SpaceWidth(10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProfileScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[800],
                              ),
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SpaceHeight(30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HomeMainMenuItemWidget(
                      title: "Informasi",
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const KrsScreen(),
                        //   ),
                        // );
                      },
                    ),
                    const SpaceHeight(14),
                    HomeMainMenuItemWidget(
                      title: "Kartu Rencana Studi",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KrsScreen(),
                          ),
                        );
                      },
                    ),
                    const SpaceHeight(14),
                    HomeMainMenuItemWidget(
                      title: "Hasil Studi",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KhsScreen(),
                          ),
                        );
                      },
                    ),
                    const SpaceHeight(14),
                    HomeMainMenuItemWidget(
                      title: "Pembayaran",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentScreen(),
                          ),
                        );
                      },
                    ),
                    const SpaceHeight(14),
                    HomeMainMenuItemWidget(
                      title: "Tugas Akhir",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TugasAkhirScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMainMenuItemWidget extends StatelessWidget {
  const HomeMainMenuItemWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.orange[300],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
