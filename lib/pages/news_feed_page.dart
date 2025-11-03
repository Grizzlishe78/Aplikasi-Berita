import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsFeedPage extends StatelessWidget {
  const NewsFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Berita Game Terbaru"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _newsCard(
            title: "PUBG Mobile Umumkan Update Mode Baru!",
            subtitle:
            "Update kali ini membawa map baru, peningkatan senjata, dan event eksklusif.",
          ),
          _newsCard(
            title: "Genshin Impact Rilis Karakter Bintang 5 Baru",
            subtitle:
            "Karakter baru dengan elemen Electro ini akan hadir bersama event banner terbaru.",
          ),
          _newsCard(
            title: "Mobile Legends Luncurkan Skin Kolaborasi Anime",
            subtitle:
            "Skin spesial ini hanya tersedia dalam waktu terbatas, pemain diwajibkan kumpulkan token event.",
          ),
          _newsCard(
            title: "Valorant Champions Tour Dimulai!",
            subtitle:
            "Turnamen internasional ini akan menjadi ajang pertarungan tim terbaik dunia.",
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Get.back(),
            child: const Text("Kembali"),
          )
        ],
      ),
    );
  }

  Widget _newsCard({required String title, required String subtitle}) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(subtitle, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
