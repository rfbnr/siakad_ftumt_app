import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../payment/screens/detail_payment_screen.dart';

class DetailTugasAkhirScreen extends StatelessWidget {
  const DetailTugasAkhirScreen({
    super.key,
    required this.titleAppbar,
    required this.title,
    required this.gradientCard,
    required this.image,
  });

  final String titleAppbar;
  final String title;
  final Gradient gradientCard;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: Text(
          titleAppbar,
          style: const TextStyle(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPaymentScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: gradientCard,
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
                        child: image,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 38,
                          left: 26,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                              ),
                            ),
                            const SpaceHeight(2),
                            const Text.rich(
                              TextSpan(
                                text: "Status Progress: ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Daftar Judul",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SpaceHeight(20),
              const DetailTugasAkhirItemWidget(
                title: "JUDUL KERJA PRAKTEK",
                value:
                    "Analisa dan Perancangan Aplikasi Sistem Akademik Berbasis Mobile",
              ),
              const SpaceHeight(20),
              const DetailTugasAkhirItemWidget(
                title: "TEMPAT PENELITIAN",
                value: "Fakultas Teknik Universitas Muhammadiyah Tangerang",
              ),
              const SpaceHeight(20),
              const DetailTugasAkhirItemWidget(
                title: "ALAMAT PENELITIAN",
                value: "Jalan Perintis Kemerdekaan I Cikokol Tangerang",
              ),
              const SpaceHeight(20),
              const DetailTugasAkhirItemWidget(
                title: "PEMBIMBING",
                value: "Syepry Maulana Husain, S.Kom, MTI",
              ),
              const SpaceHeight(30),
              Container(
                color: const Color(0xffC1C1C1),
                height: 2,
                width: double.infinity,
              ),
              const SpaceHeight(30),
              const DetailTugasAkhirStatusWidget(
                iconSuffix: Icons.bookmark_added_outlined,
                iconTrailling: Icons.done_all,
                title: "PENDAFTARAN JUDUL",
                value: "20-10-2024",
                iconSuffixColor: Color(0xff35C810),
                iconTraillingColor: Color(0xff35C810),
                titleColor: Colors.black,
                valueColor: Colors.black,
              ),
              const SpaceHeight(30),
              const DetailTugasAkhirStatusWidget(
                iconSuffix: Icons.credit_score,
                iconTrailling: Icons.check,
                title: "VERIFIKASI KEUANGAN",
                value: "20-10-2024",
                iconSuffixColor: Color(0xffC1C1C1),
                iconTraillingColor: Color(0xff2C6700),
                titleColor: Colors.black,
                valueColor: Color(0xffC4C7CB),
              ),
              const SpaceHeight(30),
              const DetailTugasAkhirStatusWidget(
                iconSuffix: Icons.rule,
                iconTrailling: Icons.check,
                title: "PENDAFTARAN JUDUL",
                value: "20-10-2024",
                iconSuffixColor: Color(0xffC4C7CB),
                iconTraillingColor: Color(0xffC4C7CB),
                titleColor: Color(0xffC4C7CB),
                valueColor: Color(0xffC4C7CB),
              ),
              const SpaceHeight(30),
              const DetailTugasAkhirStatusWidget(
                iconSuffix: Icons.account_circle_outlined,
                iconTrailling: Icons.check,
                title: "PENENTUAN PEMBIMBING",
                value: "20-10-2024",
                iconSuffixColor: Color(0xffC4C7CB),
                iconTraillingColor: Color(0xffC4C7CB),
                titleColor: Color(0xffC4C7CB),
                valueColor: Color(0xffC4C7CB),
              ),
              const SpaceHeight(30),
              const DetailTugasAkhirStatusWidget(
                iconSuffix: Icons.co_present_outlined,
                iconTrailling: Icons.check,
                title: "VERIFIKASI AKADEMIK",
                value: "20-10-2024",
                iconSuffixColor: Color(0xffC4C7CB),
                iconTraillingColor: Color(0xffC4C7CB),
                titleColor: Color(0xffC4C7CB),
                valueColor: Color(0xffC4C7CB),
              ),
              const SpaceHeight(90),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailTugasAkhirStatusWidget extends StatelessWidget {
  const DetailTugasAkhirStatusWidget({
    super.key,
    required this.iconSuffix,
    required this.iconTrailling,
    required this.title,
    required this.value,
    required this.iconSuffixColor,
    required this.iconTraillingColor,
    required this.titleColor,
    required this.valueColor,
  });

  final IconData iconSuffix;
  final IconData iconTrailling;
  final String title;
  final String value;
  final Color iconSuffixColor;
  final Color iconTraillingColor;
  final Color titleColor;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconSuffix,
                color: iconSuffixColor,
              ),
              const SpaceWidth(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      color: valueColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            iconTrailling,
            color: iconTraillingColor,
          ),
        ],
      ),
    );
  }
}

class DetailTugasAkhirItemWidget extends StatelessWidget {
  const DetailTugasAkhirItemWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xffC4C7CB),
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
        ),
        const SpaceHeight(4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
