import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../news_details/widget/strory_details.dart';/
import '../widget/news_list_home.dart';

class RecentStroies extends StatefulWidget {
  @override
  State<RecentStroies> createState() => _RecentStroiesState();
}

class _RecentStroiesState extends State<RecentStroies> {
  List<String> tabs = [
    'Barchasi',
    'Dunyo',
    'O\'zbekiston', 
    'Technologiya',
    'Forbes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'So\'ngi Yangiliklar',
          // 'Recent Stroies',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: GoogleFonts.gabriela().fontFamily,
          ),
        ),
      ),
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Barchasi',
                ),
                Tab(
                  text: 'Dunyo',
                ),
                Tab(
                  text: 'O\'zbekiston',
                ),
                Tab(
                  text: 'Technology',
                ),
                Tab(
                  text: 'Forbes',
                ),
              ],
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  // top: 8,
                  left: 20,
                  right: 20,
                ),
                child: TabBarView(
                  children: [
                    barchasiBuild(context),
                    dunyoBuild(context),
                    uzbekistonBuild(context),
                    technologyBuild(),
                    forbesBuild(),
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

Container barchasiBuild(context) {
  return Container(
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2K',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Container dunyoBuild(context) {
  return Container(
    child: ListView(
      children: [
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Container uzbekistonBuild(context) {
  return Container(
    child: ListView(
      children: [
        NewsListHome(
          title:
              'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
          imageUrl:
              'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          circleAvatar:
              'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          circleUsername: 'Oybolta News',
          dateTime: '3 mins ago',
          view: '40.3K',
          comment: '2k',
          // ontap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => NewsStroyDetails(),
          //     ),
          //   );
          // },
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}

Container technologyBuild() {
  return Container(
    child: ListView(
      children: [Text('technology')],
    ),
  );
}

Container forbesBuild() {
  return Container(
    child: ListView(
      children: [
        Text('forbes'),
      ],
    ),
  );
}
