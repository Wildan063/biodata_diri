import 'package:flutter/material.dart';

void main() => runApp(const BiodataApp());

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata Diri',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ====== GANTI DATA DI BAWAH INI DENGAN DATA ANDA ======
    const nama = 'Wildan Rizal Sbara';
    const inisial = 'WL';
    const nim = '241080200063'; // tetap pakai tanda petik
    const prodi = 'Informatika';
    const semester = 5;
    const kota = 'Sidoarjo';
    const email = 'wildanrizal@example.com';
    const hobi = ['Membaca', 'Bersepeda', 'Mancing'];
    const keahlian = ['Dart dasar', 'Flutter dasar', 'Desain UI'];
    const tentang = 'Saya mahasiswa Informatika yang sedang '
        'belajar membangun aplikasi dengan Flutter.';
    // =======================================================

    return Scaffold(
      appBar: AppBar(title: const Text('Biodata Diri')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 42,
                        child: Text(inisial, style: TextStyle(fontSize: 28)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        nama,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('NIM: $nim'),
                    const SizedBox(height: 8),
                    const Text('Program studi: $prodi'),
                    const SizedBox(height: 8),
                    const Text('Semester: $semester'),
                    const SizedBox(height: 8),
                    const Text('Kota: $kota'),
                    const SizedBox(height: 8),
                    const Text('Email: $email'),
                    const Divider(height: 32),
                    const Text('Hobi',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: hobi
                          .map((item) => Chip(label: Text(item)))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text('Keahlian',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: keahlian
                          .map((item) => Chip(label: Text(item)))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text('Tentang saya',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    const Text(tentang),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}