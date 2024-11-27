import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF5038BC),
      child: Center(
        child: Column(
          children: [
            const Profile(),
            Container(
                height: 29,
                width: 214,
                margin: EdgeInsets.fromLTRB(90, 51, 89, 25),
                child: Text('Riwayat Transaksi',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFFFFFF),
                        fontSize: 24,
                        fontWeight: FontWeight.w700))),
            Expanded(child: Transaksi())
          ],
        ),
      ),
    ));
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 337,
          height: 254,
          margin: EdgeInsets.fromLTRB(0, 77, 0, 0),
          decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              border: Border.all(color: const Color(0xFFFFFFFF)),
              borderRadius: BorderRadius.circular(24)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 71.48,
                    height: 80.74,
                    margin: EdgeInsets.fromLTRB(34, 30, 0, 0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/FOTOKU.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 45,
                    width: 174.94,
                    margin: EdgeInsets.fromLTRB(22.57, 35, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Pengguna',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                        Text(
                          '2406416351',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(34, 19.26, 0, 0),
                  child: Text(
                    "Bio",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(34, 8, 34, 0),
                  child: Text(
                    'Kalau bisa besok kenapa harus sekarang.',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(34, 25, 0, 0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 51,
                      height: 19,
                      child: SizedBox(
                        child: Text(
                          'Saldo',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(124, 0, 0, 0),
                      child: SizedBox(
                        child: Text('Rp 999.999',
                            style: TextStyle(
                                color: Color(0xFF20C000),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  // Data transaksi untuk ditampilkan
  final List<Map<String, dynamic>> transaksiList = [
    {
      'nama': 'Rafli Kopling',
      'tanggal': '6 November 2024',
      'amount': 'Rp 50.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'John Kena',
      'tanggal': '27 Oktober 2024',
      'amount': 'Rp 20.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Himsagi Yoichi',
      'tanggal': '15 Oktober 2024',
      'amount': 'Rp 70.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'Rudi Jebret',
      'tanggal': '2 November 2024',
      'amount': 'Rp 100.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Siti Pusaka',
      'tanggal': '17 Oktober 2024',
      'amount': 'Rp 35.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'Budi Kocak',
      'tanggal': '13 November 2024',
      'amount': 'Rp 150.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Wawan Sihir',
      'tanggal': '28 September 2024',
      'amount': 'Rp 80.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'Dedi Klem',
      'tanggal': '5 Oktober 2024',
      'amount': 'Rp 60.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Mia Keren',
      'tanggal': '22 September 2024',
      'amount': 'Rp 25.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'Tina Tertawa',
      'tanggal': '12 November 2024',
      'amount': 'Rp 45.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Arman Gigit',
      'tanggal': '19 Oktober 2024',
      'amount': 'Rp 85.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'Zaki Bikin Bingung',
      'tanggal': '10 November 2024',
      'amount': 'Rp 120.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Fajar Rindu',
      'tanggal': '7 November 2024',
      'amount': 'Rp 90.000',
      'warna': Color(0xFF20C000),
    },
    {
      'nama': 'Lina Jatuh',
      'tanggal': '3 Oktober 2024',
      'amount': 'Rp 110.000',
      'warna': Color(0xFFEE4545),
    },
    {
      'nama': 'Kiki Jaga',
      'tanggal': '25 November 2024',
      'amount': 'Rp 200.000',
      'warna': Color(0xFF20C000),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: transaksiList.length,
      itemBuilder: (context, index) {
        final transaksi = transaksiList[index];
        return Container(
          height: 80,
          width: 337,
          margin: const EdgeInsets.fromLTRB(28, 18, 28, 0),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 23, 0, 0),
                      padding: const EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaksi['nama']!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            transaksi['tanggal']!,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                child: Text(
                  transaksi['amount']!,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: transaksi['warna'],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
