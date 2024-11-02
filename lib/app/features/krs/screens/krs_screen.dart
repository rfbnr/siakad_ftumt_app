import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import 'detail_krs_screen.dart';

class KrsScreen extends StatelessWidget {
  const KrsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Kartu Rencana Studi",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff25A4DB),
                        Color(0xffECC116),
                      ],
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
                    padding: const EdgeInsets.only(
                      right: 40,
                      left: 20,
                      top: 28,
                      bottom: 28,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TA. 2024/2025",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            const SpaceHeight(2),
                            const Text(
                              "Semester 7",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                            const SpaceHeight(16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "Aktif",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff0E7D9C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "22",
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                            Text(
                              "SKS",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SpaceHeight(30),
              const Text(
                "Semua Semester",
                style: TextStyle(
                  color: Color(0xff7D7D7D),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              const SpaceHeight(22),
              const KrsSemesterItemWidget(
                semester: "Semester 1",
                status: "Aktif",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KrsSemesterItemWidget(
                semester: "Semester 2",
                status: "Aktif",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KrsSemesterItemWidget(
                semester: "Semester 3",
                status: "Aktif",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KrsSemesterItemWidget(
                semester: "Semester 4",
                status: "Aktif",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KrsSemesterItemWidget(
                semester: "Semester 5",
                status: "Aktif",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KrsSemesterItemWidget(
                semester: "Semester 6",
                status: "Cuti Kuliah",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffF9AFA2),
                statusColor: Color(0xffF9AFA2),
              ),
              const SpaceHeight(20),
              const KrsSemesterItemWidget(
                semester: "Semester 7",
                status: "Aktif",
                sksText: "22 SKS",
                colorTextSks: Color(0xff2C6700),
                backgroundColorSks: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(90),
            ],
          ),
        ),
      ),
    );
  }
}

class KrsSemesterItemWidget extends StatelessWidget {
  const KrsSemesterItemWidget({
    super.key,
    required this.semester,
    required this.status,
    required this.sksText,
    required this.colorTextSks,
    required this.backgroundColorSks,
    required this.statusColor,
  });

  final String semester;
  final String status;
  final String sksText;
  final Color colorTextSks;
  final Color backgroundColorSks;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailKrsScreen(),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    semester,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SpaceHeight(4),
                  Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: backgroundColorSks,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  sksText,
                  style: TextStyle(
                    color: colorTextSks,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
          const SpaceHeight(14),
          Container(
            color: const Color(0xffC1C1C1),
            height: 0.8,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
