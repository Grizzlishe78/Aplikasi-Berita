import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/main_screen.dart';
import 'pages/news_feed_page.dart';
import 'pages/messages_page.dart';
import 'pages/notifications_page.dart';
import 'pages/search_page.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paket 4 GetX',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainScreen()),
        GetPage(name: '/news', page: () => const NewsFeedPage()),
        GetPage(name: '/messages', page: () => const MessagesPage()),
        GetPage(name: '/notifications', page: () => const NotificationsPage()),
        GetPage(name: '/search', page: () => const SearchPage()),
      ],
    );
  }
}
