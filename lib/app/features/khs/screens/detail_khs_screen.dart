import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';

class DetailKhsScreen extends StatelessWidget {
  const DetailKhsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Detail KHS",
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
              DetailKrsItemWidget(
                mataKuliah: "Algoritma Pemrograman",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pemrograman Mobile",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pemrograman Web",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Kalkulus 1",
                nilai: "B",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pemrograman Game",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Arsitektur dan Organisasi Komputer",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pemrograman IoT",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pemrograman AI",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pemrograman AR",
                nilai: "A",
              ),
              SpaceHeight(10),
              DetailKrsItemWidget(
                mataKuliah: "Pengantar Teknologi Informasi",
                nilai: "A",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailKrsItemWidget extends StatelessWidget {
  const DetailKrsItemWidget({
    super.key,
    required this.mataKuliah,
    required this.nilai,
  });

  final String mataKuliah;
  final String nilai;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              mataKuliah,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Text(
                nilai,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xff2C6700),
                ),
              ),
            ),
          ],
        ),
        const SpaceHeight(6),
        Container(
          color: const Color(0xffC1C1C1),
          height: 0.8,
          width: double.infinity,
        ),
      ],
    );
  }
}
