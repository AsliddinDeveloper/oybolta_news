import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oybolta_news/home/screen/recent_strories.dart';
import 'package:oybolta_news/home/screen/trending_hom.dart';
// import '../news_details/widget/strory_details.dart';
import '../profile/modul/article_modul.dart';
import 'screen/notification_home.dart';
import 'widget/home_wiew_all.dart';
import 'widget/news_list_home.dart';
import 'widget/vertical_list_body1.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      'Barchasi',
      'Dunyo',
      'O\'zbekiston',
      'Technologiya',
      'Forbes',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBar(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            // toolbarHeight: 80,
            // leading:
            // ),
            // centerTitle: true,
            title: const Text(
              'Oybolta News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            actions: [
              Container(
                padding: const EdgeInsets.all(8),
                // margin: const EdgeInsets.all(6),
                // decoration: BoxDecoration(
                // color: Colors.grey.shade200,
                // borderRadius: BorderRadius.circular(30),
                // ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const NotificationHomeAppbarScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    // Icons.notifications,
                    CupertinoIcons.bell_solid,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Asliddin, Avazov',
                              style: TextStyle(
                                fontFamily: GoogleFonts.gabriela().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              // 'Welcome Back',
                              'Xush Kelipsiz.!',
                              style: TextStyle(
                                fontFamily: GoogleFonts.montserrat().fontFamily,
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.ant_fill,
                            size: 30,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      // homeAppbar(),
                      const SizedBox(height: 15),
                      homeViewAll(
                          title: 'Trend News',
                          ontap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => TrendingHomeScreen(),
                              ),
                            );
                          }),
                      VerticalListBody1(
                        imageUrl:
                            "https://images.unsplash.com/photo-1566423471547-2a37c9a39899?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODV8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                        title: Article.articles[3].biotext,

                        // "Unmasking the Truth: \n Investigative Report Exposes Widespread Political Corruption",
                        circleAvatar:
                            "https://images.unsplash.com/photo-1566423471547-2a37c9a39899?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODV8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                        cicrleText: 'BBS NEWS',
                        comment: '340',
                        view: '347.71k',
                        postTime: '1 days',
                      ),
                      homeViewAll(
                        title: 'So\'ngi Yangiliklar',
                        ontap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => RecentStroies(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                DefaultTabController(
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
                      Container(
                        width: double.infinity,
                        // height: double.infinity,
                        height: 800,
                        child: TabBarView(
                          // viewportFraction: 1.10,
                          // clipBehavior: Clip.antiAlias,
                          children: [
                            barchasiBuild(),
                            dunyoBuild(),
                            uzbekistonBuild(),
                            technologyBuild(),
                            forbesBuild(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container barchasiBuild() {
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        children: [
          NewsListHome(
            title: Article.articles[0].biotext,

            // 'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
            imageUrl: Article.articles[0].imageUrl,
            // 'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
            circleAvatar: Article.articles[0].imageUrl,

            // 'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGltYWdlcyUyMHRlY2hub2xvZ3l8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
            circleUsername: Article.articles[0].username,
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
            title: Article.articles[4].biotext,
            // 'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
            imageUrl: Article.articles[1].imageUrl,

            // 'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
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
            title: Article.articles[5].biotext,
            // 'Revolutionizing the Futere:  Breakthrough Technology Set to Transfrorm Industries',
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
        ],
      ),
    );
  }

  Container dunyoBuild() {
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [Text('Dunyo')],
      ),
    );
  }

  Container uzbekistonBuild() {
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [Text('UZBekiston')],
      ),
    );
  }

  Container technologyBuild() {
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [Text('technology')],
      ),
    );
  }

  Container forbesBuild() {
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [Text('forbes')],
      ),
    );
  }
}

// class newsRowDetails extends StatelessWidget {
//   const newsRowDetails({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [

//       ],
//     );
//   }
// }
