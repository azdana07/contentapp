import 'package:flutter/material.dart';
import 'content.dart';

class ContentDetail extends StatefulWidget {
  final Content content;

  const ContentDetail({Key? key, required this.content}) : super(key: key);

  @override
  State<ContentDetail> createState() => _ContentDetailState();
}

class _ContentDetailState extends State<ContentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content.label),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(widget.content.imageUrl, // Menggunakan Image.network untuk memuat gambar dari URL
              fit: BoxFit.cover, // Menyesuaikan gambar agar sesuai dengan ruang yang tersedia
              height: 1000, // Tinggi gambar
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.content.label,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.content.date.day}-${widget.content.date.month}-${widget.content.date.year}', // Menampilkan tanggal
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.content.synopsis.description, // Menampilkan sinopsis
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
