import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oybolta_news/bookmark/bookmark.dart';
import 'package:oybolta_news/discover/discover.dart';
import 'package:oybolta_news/profile/modul/article_modul.dart';
import 'package:oybolta_news/profile/screen/profile.dart';

import 'home/home.dart';
import 'profile/modul/profile_news_modul.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.gabriela().fontFamily,
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue.shade300,
      ),
      home: Home1(),
    );
  }
}

class Home1 extends StatefulWidget {
  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  List<ProfileNewsModul> prnews = ProfileNewsM().prnews;
  int currentIndex = 0;

  List _pages = [
     Home(),
    Discover(
      articles: Article.articles,
    ),
    Bookmark(),
    Profile(
      articles: Article.articles,
      // prnews,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Colors.blue,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey.shade400,
        ),
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.indigo,
            icon: Icon(
              Icons.home,
              // CupertinoIcons.
            ),
            label: 'Asosiy',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.indigo,
            icon: Icon(
              Icons.view_kanban_outlined,
            ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.indigo,
            icon: Icon(
              // Icons.bookmark_border,
              CupertinoIcons.bookmark,
              size: 20,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.indigo,
            icon: Icon(
              // Icons.person_2_outlined,
              CupertinoIcons.person,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
      ),
      body: _pages[currentIndex],
    );
  }
}
