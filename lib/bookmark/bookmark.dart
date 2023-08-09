import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.bookmark_fill,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Bookmark',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.add_circled,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: 'Barchasi',
                ),
                Tab(
                  text: 'Kerakli ',
                ),
                Tab(
                  text: 'Technology',
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  // top: 8,
                  left: 20,
                  right: 20,
                ),
                child: TabBarView(
                  children: [
                    bookmarkBuild(),
                    bookmarkBuild(),
                    bookmarkBuild(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

SingleChildScrollView bookmarkBuild() {
  return const SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.only(
        top: 80,
        left: 15,
        right: 15,
        bottom: 50,
      ),
      child: Column(
        children: [
          Icon(
            CupertinoIcons.doc_on_doc,
            color: Colors.blue,
            size: 200,
          ),
          SizedBox(height: 15),
          Text(
            'Xozircha Bo\'sh',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Siz ushbu to\'plamga hech qanday hikoya saqlamagansiz.',
            // 'You have not saved any strois to this collection.',
            textAlign: TextAlign.center,
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}
