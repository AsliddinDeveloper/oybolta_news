import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oybolta_news/home/widget/home_wiew_all.dart';
import 'package:oybolta_news/home/widget/vertical_list_body1.dart';
import 'package:oybolta_news/profile/modul/article_modul.dart';

class Discover extends StatelessWidget {
  final List<Article> articles;
  const Discover({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.white10,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ant_fill,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: const Text(
              'Discover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        homeViewAll(
                          title: "Haftaning so\'ngi yangilk..",
                          // title: "This Week's Top Stories",
                          ontap: () {},
                        ),
                        const VerticalListBody1(
                          title:
                              'Articial Intelliagence (AI) Revolution: How AI is Shoping Our Lives in the Future',
                          imageUrl:
                              "https://images.unsplash.com/photo-1528219089976-22adb38bffa4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTJ8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          circleAvatar:
                              "https://images.unsplash.com/flagged/photo-1556120011-52de4d5c2743?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODN8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          cicrleText: 'Kshuzb',
                          postTime: "1 mins ago",
                          view: '468K',
                          comment: '964',
                        ),
                      ],
                    ),
                  ),
                  homeViewAll(
                    title: 'Mashhur Rasmiy Kanallar',
                    ontap: () {},
                  ),
                  const SizedBox(height: 10),
                  Container(
                    // color: Colors.amber,
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        officialNewsFollowingBuild(
                          'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          'CNN News',
                        ),
                        officialNewsFollowBuild(
                            "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                            'NBS News'),
                        officialNewsFollowingBuild(
                          'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          'CNN News',
                        ),
                        officialNewsFollowBuild(
                            "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                            'NBS News'),
                        officialNewsFollowingBuild(
                          'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          'CNN News',
                        ),
                        officialNewsFollowBuild(
                            "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                            'NBS News'),
                        officialNewsFollowingBuild(
                          'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          'CNN News',
                        ),
                        officialNewsFollowBuild(
                            "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                            'NBS News'),
                        officialNewsFollowingBuild(
                          'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          'CNN News',
                        ),
                        officialNewsFollowBuild(
                            "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                            'NBS News'),
                        officialNewsFollowingBuild(
                          'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                          'CNN News',
                        ),
                        officialNewsFollowBuild(
                          "https://images.unsplash.com/photo-1619679505795-a4d0e6be5e02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNubiUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                          'NBS News',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  homeViewAll(
                    // title: 'Mashhur Mualliflar',
                    title: 'Popular Authors',
                    ontap: () {},
                  ),
                  // const SizedBox(height: 1),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            officialNewsFollowingBuild(
                              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                              "Nilufar H.",
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowBuild(
                              "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                              'Boybobo',
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowingBuild(
                              "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              "Kristina B.",
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowingBuild(
                              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              "Asliddin A.",
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowingBuild(
                              "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              "Madina A.",
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowBuild(
                              "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              'Edgard T.',
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowingBuild(
                              "https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              "Cinton M",
                            ),
                            // vericalDiverBuild(),
                            officialNewsFollowingBuild(
                              "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              "Malika T.",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  homeViewAll(
                    title: 'Siz uchun tavsiyalar',
                    ontap: () {},
                  ),
                  const VerticalListBody1(
                    title:
                        'Industry Disruptors: Companies Revolutionizing Trational Businees Models',
                    imageUrl:
                        'https://images.unsplash.com/photo-1481437642641-2f0ae875f836?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    circleAvatar:
                        'https://images.unsplash.com/photo-1681928411573-a5a2de3e2ae5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y25uJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    cicrleText: 'CNN News',
                    postTime: '4 kun oldin',
                    view: '436.8K',
                    comment: '5.1k',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding vericalDiverBuild() {
    return const Padding(
      padding: EdgeInsets.only(
        top: 8,
        bottom: 20,
      ),
      child: VerticalDivider(),
    );
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
}
