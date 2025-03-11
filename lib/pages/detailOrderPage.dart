import 'package:flutter/material.dart';

class DetailOrder extends StatefulWidget {
  final String menu;
  final int harga;
  final String gambar;

  const DetailOrder(
      {super.key,
      required this.menu,
      required this.harga,
      required this.gambar});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  int jumlah = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Order'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Image(image: AssetImage(widget.gambar)),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    widget.menu,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text('Harga: Rp ${widget.harga},-'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan jumlah pesanan',
                  ),
                  onChanged: (value) {
                    setState(() {
                      jumlah = value.isEmpty ? 0 : int.parse(value);
                    });
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    total = widget.harga * jumlah;
                  },
                  child: Text('Submit'),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Total Harga: Rp $total,-',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
