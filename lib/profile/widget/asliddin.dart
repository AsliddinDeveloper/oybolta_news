import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oybolta_news/profile/modul/article_modul.dart';
import 'package:oybolta_news/profile/widget/popular_widget/author_images/author_images.dart';

import '../screen/profile.dart';
import 'edit_profile.dart';

class PupularProfile extends StatelessWidget {
  const PupularProfile({
    super.key,
    // required this.article,
  });

  // final Article article;
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.white10,
            elevation: 0,
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
                padding: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.ant_fill,
                        // size: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
        body: ListView.builder(
          // itemCount: 1,
          itemBuilder: ((context, index) => Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => AurthorImages(
                                          imageUrl:
                                              // Article.articles[index].imageUrl,
                                              article.imageUrl,
                                          // "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          // Article.articles[index].imageUrl,
                                          article.imageUrl,
                                          // "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
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

                                        // Article.articles[index].fullName,
                                        article.fullName,

                                        // textScaleFactor: 1.50,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        // '@Asliddin',

                                        Article.articles[index].username,
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
                          Article.articles[index].biotext,
                          // 'Qulay vaqtni kutmang, u hech qachon kelmaydi. \n Ulkan orzularingni tor fikirlovchi insonlarga aytma..! \n Dam olib utirishga vaqt yo\'q',
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
                                // 'myurls.co/asliddin',

                                Article.articles[index].myurl,
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
                                const Text(
                                  '210',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Stories',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  // '12 674 112M',
                                  Article.articles[index].obunachilar,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Obunachilar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  '241',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 6),
                        const Divider(),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
