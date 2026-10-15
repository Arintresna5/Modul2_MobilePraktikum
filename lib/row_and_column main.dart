import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row dan Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas Row dan Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  KotakFavorite(
                    warna: Colors.blue,
                    teks: 'Kotak 1',
                  ),
                  SizedBox(width: 20),
                  KotakFavorite(
                    warna: Colors.lightBlue,
                    teks: 'Kotak 2',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  KotakFavorite(
                    warna: Colors.blueAccent,
                    teks: 'Kotak 3',
                  ),
                  SizedBox(width: 20),
                  KotakFavorite(
                    warna: Colors.lightBlueAccent,
                    teks: 'Kotak 4',
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

class KotakFavorite extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakFavorite({
    super.key,
    required this.warna,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: warna,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 50,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          teks,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
