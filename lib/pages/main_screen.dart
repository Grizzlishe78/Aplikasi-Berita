import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () => Get.toNamed('/messages'),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () => Get.toNamed('/notifications'),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Get.toNamed('/search'),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/news'),
          child: Text("Lihat Berita"),
        ),
      ),
    );
  }
}
