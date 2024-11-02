import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import 'detail_khs_screen.dart';

class KhsScreen extends StatelessWidget {
  const KhsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Kartu Hasil Studi",
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Total Mata Kuliah",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            SpaceHeight(2),
                            Text(
                              "112",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 40,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "IPK",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            SpaceHeight(2),
                            Text(
                              "3.89",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 40,
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
              const KhsSemesterItemWidget(
                semester: "Semester 1",
                status: "Aktif",
                ipkText: "3.8",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 2",
                status: "Aktif",
                ipkText: "3.62",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 3",
                status: "Aktif",
                ipkText: "3.82",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 4",
                status: "Aktif",
                ipkText: "3.72",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 5",
                status: "Aktif",
                ipkText: "3.77",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 6",
                status: "Cuti Kuliah",
                ipkText: "0",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffF9AFA2),
                statusColor: Color(0xffF9AFA2),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 7",
                status: "Aktif",
                ipkText: "0",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
                statusColor: Color(0xff2C6700),
              ),
              const SpaceHeight(20),
              const KhsSemesterItemWidget(
                semester: "Semester 8",
                status: "Aktif",
                ipkText: "0",
                colorIpkText: Color(0xff2C6700),
                backgroundColorIpk: Color(0xffC7F9A2),
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

class KhsSemesterItemWidget extends StatelessWidget {
  const KhsSemesterItemWidget({
    super.key,
    required this.semester,
    required this.status,
    required this.ipkText,
    required this.colorIpkText,
    required this.backgroundColorIpk,
    required this.statusColor,
  });

  final String semester;
  final String status;
  final String ipkText;
  final Color colorIpkText;
  final Color backgroundColorIpk;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailKhsScreen(),
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
                  color: backgroundColorIpk,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  ipkText,
                  style: TextStyle(
                    color: colorIpkText,
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
