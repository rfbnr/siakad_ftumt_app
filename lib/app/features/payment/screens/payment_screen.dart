import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import 'detail_payment_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Pembayaran",
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
                semester: "Semester 1",
                indicatorPersen: "100 %",
                total: "Rp. 8.000.000",
                terbayar: "Rp. 8.000.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 2",
                indicatorPersen: "100 %",
                total: "Rp. 7.800.000",
                terbayar: "Rp. 7.800.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 3",
                indicatorPersen: "100 %",
                total: "Rp. 7.800.000",
                terbayar: "Rp. 7.800.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 4",
                indicatorPersen: "100 %",
                total: "Rp. 7.800.000",
                terbayar: "Rp. 7.800.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 5",
                indicatorPersen: "100 %",
                total: "Rp. 7.800.000",
                terbayar: "Rp. 7.800.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 6",
                indicatorPersen: "100 %",
                total: "Rp. 7.800.000",
                terbayar: "Rp. 7.800.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 7",
                indicatorPersen: "100 %",
                total: "Rp. 8.800.000",
                terbayar: "Rp. 8.800.000",
                sisa: "Rp. 0",
              ),
              SpaceHeight(20),
              DetailKrsCardItemWidget(
                semester: "Semester 8",
                indicatorPersen: "0 %",
                total: "Rp. 7.800.000",
                terbayar: "Rp. 0",
                sisa: "Rp. 7.800.000",
              ),
              SpaceHeight(90),
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
    required this.semester,
    required this.indicatorPersen,
    required this.total,
    required this.terbayar,
    required this.sisa,
  });

  final String semester;
  final String indicatorPersen;
  final String total;
  final String terbayar;
  final String sisa;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff150C90),
              Color(0xffEFB1E2),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        semester,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        indicatorPersen,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const SpaceWidth(10),
                  Text(
                    total,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SpaceHeight(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terbayar: $terbayar",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Sisa: $sisa",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
