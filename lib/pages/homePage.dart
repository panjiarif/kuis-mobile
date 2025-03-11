import 'package:flutter/material.dart';
import 'package:kuis_panji/pages/aboutPage.dart';
import 'package:kuis_panji/pages/detailOrderPage.dart';
import 'package:kuis_panji/pages/loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.username});
  final String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        automaticallyImplyLeading: false,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (route) => false);
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Selamat Datang ${widget.username}!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AboutPage();
              }));
            },
            child: Text(
              'Klik untuk ke halaman About',
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
          Text(
            'Daftar Menu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
              child: ListView(children: [
            Card(
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/piring.jfif'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Nasi Goreng',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp 15000,-'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String menu = 'Nasi Goreng';
                      int harga = 15000;
                      String gambar = 'assets/piring.jfif';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/piring.jfif'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 68, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Mie Ayam',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp 12000,-'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String menu = 'Mie Ayam';
                      int harga = 12000;
                      String gambar = 'assets/piring.jfif';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/piring.jfif'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 63, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Sate Ayam',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp 20000,-'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String menu = 'Sate Ayam';
                      int harga = 20000;
                      String gambar = 'assets/piring.jfif';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/piring.jfif'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 73, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Bakso',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp 10000,-'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String menu = 'Bakso';
                      int harga = 10000;
                      String gambar = 'assets/piring.jfif';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/piring.jfif'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 62, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Soto Ayam',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp 13000,-'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String menu = 'Soto Ayam';
                      int harga = 13000;
                      String gambar = 'assets/piring.jfif';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/piring.jfif'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Gado-Gado',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp 14000,-'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String menu = 'Gado-Gado';
                      int harga = 14000;
                      String gambar = 'assets/piring.jfif';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailOrder(
                                    menu: menu,
                                    harga: harga,
                                    gambar: gambar,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
