import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../discover/profile_page/profile.dart';
import '../../home/widget/home_wiew_all.dart';
import '../../home/widget/news_list_home.dart';
// import '../../news_details/widget/strory_details.dart';
import '../../news_details/news_details.dart';
import '../modul/article_modul.dart';
// import '../modul/profile_news_modul.dart';
// import '../widget/asliddin.dart';
import '../widget/edit_profile.dart';
import '../widget/popular_widget/asliddin.dart';
import '../widget/popular_widget/p2.dart';
import '../widget/popular_widget/p3.dart';
import '../widget/popular_widget/p4.dart';
import '../widget/popular_widget/p5.dart';
import '../widget/popular_widget/p6.dart';
import '../widget/popular_widget/p7.dart';
import '../widget/popular_widget/p8.dart';
import '../widget/settings.dart';
import '../widget/write_stroies.dart';

class Profile extends StatelessWidget {
  // final List<ProfileNewsModul> prnews;
  const Profile({
    super.key,
    required this.articles,
    // required this.prnews,
  });
  // final List<ProfileNewsModul> prnews;

  final List<Article> articles;

  // final articles = Article.articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.white10,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.smoke,
                color: Colors.black,
                // CupertinoIcons.profile_circled,
                size: 30,
              ),
            ),
            centerTitle: true,
            title: const Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SettinsProfile(),
                          ),
                        );
                      },
                      icon: const Icon(
                        // CupertinoIcons.s
                        Icons.settings_suggest_outlined,
                        color: Colors.black,
                        size: 26,
                      ),
                    ),
                    // const SizedBox(width: 5),
                  ],
                ),
              )
            ],
          ),
        ],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      Article.articles[0].imageUrl,
                                      // "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",

                                      // "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      // 'Avazov Asliddin',

                                      Article.articles[0].fullName,

                                      // textScaleFactor: 1.50,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      // '@Boybobouz',

                                      Article.articles[0].username,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey.shade700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => const EditProfile(),
                                ),
                              );
                            },
                            child: newsHashtag1(
                              'Edit Profile',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      SelectableText(
                        Article.articles[0].biotext,
                        // 'Tech  enthusiast, likes to share stories about technology, and the digital world.',
                        textScaleFactor: 1.50,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      // const SizedBox(height: 15),
                      // const Divider(),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.link_circle,
                            color: Colors.blue,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              // 'myurls.co/boybobouz',

                              Article.articles[0].myurl,

                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                // '327',

                                Article.articles[0].stories,

                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Yangiliklar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                  fontFamily: GoogleFonts.gabriela().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                // '8 672 401 M',

                                Article.articles[0].obunachilar,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Obunachilar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                  fontFamily: GoogleFonts.gabriela().fontFamily,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                // '241',
                                Article.articles[0].following,

                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Following',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                  fontFamily: GoogleFonts.gabriela().fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Divider(),
                      const SizedBox(height: 10),
                      homeViewAll(
                        title: 'Popular Authors',
                        ontap: () {},
                      ),
                      const SizedBox(height: 10),
                      // peopleVertical(),
                      // Container(
                      //   height: 200,
                      //   child: ListView.builder(
                      //     itemCount: Article.articles.length,
                      //     physics: const BouncingScrollPhysics(),
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (ctx, index) => Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 0),
                      //       child: Row(
                      //         children: [
                      //           InkWell(
                      //             onTap: () {
                      //               Navigator.of(context).push(
                      //                 MaterialPageRoute(
                      //                   builder: (context) => PupularProfile(
                      //                     // article: Article.articles[index],
                      //                     // Article.articles.lengt,
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //             child: Column(
                      //               children: [
                      //                 Container(
                      //                   width: 80,
                      //                   height: 80,
                      //                   decoration: BoxDecoration(
                      //                     borderRadius:
                      //                         BorderRadius.circular(80),
                      //                     image: DecorationImage(
                      //                       image: NetworkImage(
                      //                         // imageUrl,
                      //                         Article.articles[index].imageUrl,
                      //                         // 'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      //                       ),
                      //                       fit: BoxFit.cover,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 const SizedBox(height: 6),
                      //                 Text(
                      //                   Article.articles[index].username,
                      //                   // 'CNN News',
                      //                   style: const TextStyle(
                      //                     fontWeight: FontWeight.bold,
                      //                   ),
                      //                 ),
                      //                 const SizedBox(height: 4),
                      //                 Container(
                      //                   padding: const EdgeInsets.all(8),
                      //                   margin: const EdgeInsets.all(8),
                      //                   decoration: BoxDecoration(
                      //                     // color: Colors.grey.shade300,
                      //                     border: Border.all(
                      //                       color: Colors.grey.shade300,
                      //                       width: 2,
                      //                     ),
                      //                     borderRadius:
                      //                         BorderRadius.circular(30),
                      //                   ),
                      //                   child: const Text('Following'),
                      //                 )
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => AsliddinProfile(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowingBuild(
                                    "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                                    "Asliddin A.",
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile2(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowBuild(
                                    'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                    'Edgard Toms',
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile3(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowingBuild(
                                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                                    "Nilufar H.",
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile4(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowingBuild(
                                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                    "Boybobo Milliarder",
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile5(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowingBuild(
                                    "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    'Kristina B.',
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile6(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowBuild(
                                    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    'Madina A.',
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile7(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowingBuild(
                                    "https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    "Cinton M",
                                  ),
                                ),
                                // vericalDiverBuild(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => Profile8(),
                                      ),
                                    );
                                  },
                                  child: officialNewsFollowingBuild(
                                    "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                    "Malika T.",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10), const SizedBox(height: 5),
                      const Divider(),
                      const SizedBox(height: 8),
                      newslistBuild(context),
                      newslistBuild(context),
                      newslistBuild(context),
                      newslistBuild(context),
                      newslistBuild(context),
                      newslistBuild(context),
                      newslistBuild(context),
                      newslistBuild(context),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const HikoyalarOynasi(),
            ),
          );
        },
        child: const Icon(CupertinoIcons.pencil_outline),
      ),
    );
  }

  Container peopleVertical() {
    return Container(
      // color: Colors.amber,
      height: 175,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => DiscoverProfile(
                    articles: Article.articles,
                  ),
                ),
              );
            },
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(
                          image: NetworkImage(
                            Article.articles[index].imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      // 'CNN News',
                      Article.articles[index].username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          // border: Border.all(
                          //   // color: Colors.grey.shade300,
                          //   width: 2,
                          // ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text('Follow'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // child: ListView(
  //   scrollDirection: Axis.horizontal,
  //   children: [
  //     officialNewsFollowingBuild(
  //       'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  //       'CNN News',
  //       context,
  //     ),
  //     officialNewsFollowBuild(
  //       "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  //       'NBS News',
  //       context,
  //     ),
  //     officialNewsFollowingBuild(
  //       'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  //       'CNN News',
  //       context,
  //     ),
  //     officialNewsFollowBuild(
  //       "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  //       'NBS News',
  //       context,
  //     ),
  //     officialNewsFollowingBuild(
  //       'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  //       'CNN News',
  //       context,
  //     ),
  //     officialNewsFollowBuild(
  //       "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  //       'NBS News',
  //       context,
  //     ),
  //     officialNewsFollowingBuild(
  //       'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  //       'CNN News',
  //       context,
  //     ),
  //     officialNewsFollowBuild(
  //       "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  //       'NBS News',
  //       context,
  //     ),
  //     officialNewsFollowingBuild(
  //       'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  //       'CNN News',
  //       context,
  //     ),
  //     officialNewsFollowBuild(
  //         "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  //         'NBS News',
  //         context),
  //     officialNewsFollowingBuild(
  //         'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  //         'CNN News',
  //         context),
  //     officialNewsFollowBuild(
  //         "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  //         'NBS News',
  //         context),
  //   ],
  // ),

  InkWell newslistBuild(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => NewsStroyDetails(),
          ),
        );
      },
      child: Column(
        children: [
          NewsListHome(
            title: Article.articles[0].biotext,

            // "The Future is here: Exploring the Exiciting world of futistic Tech",
            imageUrl:
                "https://images.unsplash.com/photo-1520880867055-1e30d1cb001c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
            // 'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
            circleAvatar:
                "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
            circleUsername: 'CNN News',
            dateTime: '40 mins',
            view: '670K',
            comment: '4K',
          ),
          NewsListHome(
            title:
                "From Sci-Fi to Reality: Mind-Blowing Innivations Taking Center Staeg",
            imageUrl:
                "https://images.unsplash.com/photo-1520880867055-1e30d1cb001c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
            // 'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aW1hZ2VzJTIwdGVjaG5vbG9neXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
            circleAvatar:
                "https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
            circleUsername: 'CNN News',
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
      ),
    );
  }
}

Padding officialNewsFollowBuild(
  String imageUrl,
  String usernameText,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
    ),
    child: Row(
      children: [
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              // 'CNN News',
              usernameText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green,
                  // border: Border.all(
                  //   // color: Colors.grey.shade300,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text('Follow'),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Padding officialNewsFollowingBuild(
  String imageUrl,
  String usernameText,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Row(
      children: [
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl,
                    // 'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              usernameText,
              // 'CNN News',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  // color: Colors.grey.shade300,
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text('Following'),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Container newsHashtag1(String top1) {
  return Container(
    padding: const EdgeInsets.only(
      top: 7,
      bottom: 7,
      left: 8,
      right: 8,
    ),
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
          )
        ]),
    child: Text(
      top1,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
        color: Colors.black,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
    ),
  );
}
