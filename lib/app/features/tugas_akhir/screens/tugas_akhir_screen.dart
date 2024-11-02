import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import 'detail_tugas_akhir_screen.dart';

class TugasAkhirScreen extends StatelessWidget {
  const TugasAkhirScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Tugas Akhir",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 14.0,
          ),
          child: Column(
            children: [
              TugasAkhirCardItemWidget(
                title: "Kerja Praktek",
                gradientColor: const LinearGradient(
                  colors: [
                    Color(0xff045BDF),
                    Color(0xff110C92),
                  ],
                ),
                sourceImg: "assets/images/kp.png",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailTugasAkhirScreen(
                        titleAppbar: "Detail Kerja Praktek",
                        title: "Kerja Praktek",
                        gradientCard: const LinearGradient(
                          colors: [
                            Color(0xff045BDF),
                            Color(0xff110C92),
                          ],
                        ),
                        image: Image.asset(
                          "assets/images/kp.png",
                          width: 220,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SpaceHeight(30),
              TugasAkhirCardItemWidget(
                title: "Skripsi",
                gradientColor: const LinearGradient(
                  colors: [
                    Color(0xffECA50D),
                    Color(0xffE4EFB1),
                  ],
                ),
                sourceImg: "assets/images/skripsi.png",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailTugasAkhirScreen(
                        titleAppbar: "Detail Skripsi",
                        title: "Skripsi",
                        gradientCard: const LinearGradient(
                          colors: [
                            Color(0xffECA50D),
                            Color(0xffE4EFB1),
                          ],
                        ),
                        image: Image.asset(
                          "assets/images/skripsi.png",
                          width: 240,
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TugasAkhirCardItemWidget extends StatelessWidget {
  const TugasAkhirCardItemWidget({
    super.key,
    required this.title,
    required this.gradientColor,
    required this.sourceImg,
    required this.onTap,
  });

  final String title;
  final Gradient gradientColor;
  final String sourceImg;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: gradientColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: -10,
              child: Image.asset(
                sourceImg,
                width: 220,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 38,
                left: 26,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
