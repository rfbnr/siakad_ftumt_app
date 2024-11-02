import 'package:flutter/material.dart';

class DetailPaymentScreen extends StatelessWidget {
  const DetailPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0,
        title: const Text(
          "Detail Pembayaran",
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
              Table(
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth(1.8),
                  1: FlexColumnWidth(1.4),
                  2: FlexColumnWidth(1.4),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                children: [
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Text(
                          "KOMPONEN",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Text(
                          "TERBAYAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        child: Text(
                          "SISA",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ...pembayaranData.map(
                    (data) {
                      return TableRow(
                        decoration: BoxDecoration(
                          color: data["komponen"] == "Jumlah"
                              ? Colors.black.withOpacity(0.1)
                              : null,
                          border: Border(
                            bottom: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12.0,
                              left: 4.0,
                              right: 4.0,
                              bottom: 4.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data["komponen"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  data["priceKomponen"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12.0,
                              left: 4.0,
                              right: 4.0,
                            ),
                            child: Text(
                              data["terbayar"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12.0,
                              left: 4.0,
                              right: 4.0,
                            ),
                            child: Text(
                              data["sisa"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> pembayaranData = [
  {
    "komponen": "Uang SPP",
    "priceKomponen": "Rp 3.850.000",
    "terbayar": "Rp 3.850.000",
    "sisa": "Rp 0",
  },
  {
    "komponen": "Uang SKS",
    "priceKomponen": "Rp 2.500.000",
    "terbayar": "Rp 1.500.000",
    "sisa": "Rp 1.000.000",
  },
  {
    "komponen": "Uang Registrasi",
    "priceKomponen": "Rp 500.000",
    "terbayar": "Rp 500.000",
    "sisa": "Rp 0",
  },
  {
    "komponen": "Uang Perpustakaan",
    "priceKomponen": "Rp 650.000",
    "terbayar": "Rp 450.000",
    "sisa": "Rp 200.000",
  },
  {
    "komponen": "Praktek & Laboratorium",
    "priceKomponen": "Rp 200.000",
    "terbayar": "Rp 200.000",
    "sisa": "Rp 0",
  },
  {
    "komponen": "Jumlah",
    "priceKomponen": "Rp 7.700.000",
    "terbayar": "Rp 6.500.000",
    "sisa": "Rp 1.200.000",
  },
];
