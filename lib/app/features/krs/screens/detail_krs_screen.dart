import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class DetailKrsScreen extends StatelessWidget {
  const DetailKrsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Detail KRS",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 14.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailKrsCardItemWidget(
                mataKuliah: "Mobile Programming",
                waktu: "Senin, 08:30 - 10:00 WIB",
                ruang: "Ruang A12.7",
                dosen: "Syepry Maulana Husain, S.Kom, MTI",
                iconPersonColor: Color(0xff150C90),
                gradientColors: [
                  Color(0xff150C90),
                  Color(0xffEFB1E2),
                ],
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                mataKuliah: "Analisis dan Perancangan Sistem Informasi",
                waktu: "Senin, 08:30 - 10:00 WIB",
                ruang: "Ruang A12.7",
                dosen: "Yani Sugiani, M.Kom",
                iconPersonColor: Color(0xffE8AD0D),
                gradientColors: [
                  Color(0xffE8AD0D),
                  Color(0xffEFB1E2),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailKrsCardItemWidget extends StatelessWidget {
  const DetailKrsCardItemWidget({
    super.key,
    required this.mataKuliah,
    required this.waktu,
    required this.ruang,
    required this.dosen,
    required this.gradientColors,
    required this.iconPersonColor,
  });

  final String mataKuliah;
  final String waktu;
  final String ruang;
  final String dosen;
  final List<Color> gradientColors;
  final Color iconPersonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: AppColors.white,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: iconPersonColor,
                  ),
                ),
                const SpaceWidth(10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        mataKuliah,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      const SpaceHeight(14),
                      Text(
                        waktu,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        ruang,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SpaceHeight(30),
            Text(
              dosen,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
