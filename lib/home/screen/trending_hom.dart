import 'package:flutter/material.dart';

// import '../../news_details/widget/strory_details.dart';
import '../widget/news_list_home.dart';

class TrendingHomeScreen extends StatelessWidget {
  const TrendingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (contex, innerBoxIsScrolled) => [
          SliverAppBar(
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Trend News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 9,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  trendingListBuild(context),
                  trendingListBuild(context),
                  trendingListBuild(context),
                  trendingListBuild(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column trendingListBuild(context) {
    return Column(
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
      ],
    );
  }
}
