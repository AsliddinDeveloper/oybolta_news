import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oybolta_news/profile/modul/article_modul.dart';

import '../home/screen/recent_strories.dart';
import '../home/widget/home_wiew_all.dart';
import '../home/widget/vertical_list_body1.dart';

class NewsStroyDetails extends StatelessWidget {
  const NewsStroyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: Colors.white10,
                elevation: 0,
                iconTheme: const IconThemeData(
                  color: Colors.black,
                ),
                actions: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.bookmark),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ],
                  )
                ],
              ),
            ]),
        body: ListView.builder(
          // itemCount: Article.articles.length,
          itemCount: 1,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                newsDetailsImageBuild(),
                const SizedBox(height: 16),
                const Text(
                  // Article.articles[index].biotext,
                  'Putinning jiyani harbiy bankning top-menejeri ekani aniqlandi ',
                  textAlign: TextAlign.start,
                  textScaleFactor: 1.40,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                            Article.articles[0].imageUrl,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          Article.articles[2].username,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.add),
                              Text('Obuna Bo\'ing'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '5 mins read',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      '2 days ago',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey.shade500,
                          size: 20,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '246.9k',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.ellipses_bubble,
                          size: 20,
                          color: Colors.grey.shade500,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '2.2k',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const SelectableText(
                  "Rossiya prezidenti Vladimir Putinning qarindoshlari banklar va davlat korporatsiyalarida ishlashni afzal ko'radi. Jumladan, Putinning jiyani Vera Podguzova 2020-yilda “Promsvyazbank” katta vitse-prezidenti bo'lgan, o'sha paytda u 36 yoshda edi. Bu haqda The Moscow Times xabar berdi.",
                  textScaleFactor: 1.40,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  """ \“Promsvyazbank” davlat mudofaa buyurtmasiga xizmat qilgani uchun G'arb sanksiyalari ostida. Putin jiyanining oylik maoshi deyarli 2 million rublni (taxminan 20 715 dollar) tashkil qiladi. Uning turmush o'rtog'i Dmitriy Podguzov Rossiya temiryo'llari kasalxonasida ma'muriy va iqtisodiy masalalar bo'yicha direktor o'rinbosari lavozimida ishlaydi. 

Vera Podguzova 23 yoshiga qadar otasi, harbiy jarroh Aleksandr Sokolovning familiyasida bo'lgan. Biroq u 2007-yilda Vera Putina bo'lishga qaror qilgan. Aynan o'sha paytda uning siyosiy karyerasi boshlangan.

“Rossiya Yedinaya” partiya jurnali bosh muharriri sifatida 2 yillik faoliyatidan so'ng u partiyaning kadrlar zaxirasiga kiritilgan. U darhol Sankt-Peterburg markaziy okrugi munitsipial deputati etib saylangan. 2010-yil sentabrda “Ganzakombank” direktorlar kengashi a'zosi bo'lgan.

Vera “Promsvyazbank”ka o'tgunga qadar Rossiya eksport markazida tashqi aloqalar va kommunikatsiyalar bo'yicha boshqaruvchi direktor bo'lib ishlagan.""",
                  textScaleFactor: 1.30,
                ),
                const SizedBox(height: 18),
                newsDetailsImageBuild(),
                const SizedBox(height: 18),

                const Text(
                  "Podguzova onasi tomonidan Putinning jiyani hisoblanadi. Intervyuda u “ota-onasi” tomonidan unga omad kulib boqqani haqida aytgan. ",
                  textScaleFactor: 1.30,
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Container(
                        width: 3,
                        height: 140,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          "“Ular menga ko'p narsani o'rgatdi — har biri o'z yo'lida va men yillar davomida ko'p narsalarni tushundim. Oila a’zolarimning ba'zi xususiyatlari menda tabiiy ravishda uyg'onadi, buning uchun juda minnatdorman”, — degan u.",
                          textScaleFactor: 1.18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  "Putinning yana bir jiyani Yelena Jidkova Rossiyaning 75 ta subyektidagi 360 ta shifoxona va poliklinikani o‘z ichiga olgan “RJD-Meditsina” rahbari. Uning yillik daromadi 20 million rublni (taxminan 206 675 dollar) tashkil qiladi. Uning onasi prezident ma’muriyatining amaldorlar davolanadigan poliklinikasida bosh shifokor o‘rinbosari hisoblanadi.",
                  textScaleFactor: 1.20,
                ),
                const SizedBox(height: 20),
                // const Row(
                //   children: [
                //     Text(
                //       "Mavzuga doir",
                //       style: TextStyle(
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ],
                // ),

                const SizedBox(height: 8),
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
                const VerticalListBody1(
                  imageUrl:
                      "https://images.unsplash.com/photo-1566423471547-2a37c9a39899?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODV8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  title:
                      // Article.articles[3].biotext,

                      "Unmasking the Truth: \n Investigative Report Exposes Widespread Political Corruption",
                  circleAvatar:
                      "https://images.unsplash.com/photo-1566423471547-2a37c9a39899?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODV8fGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  cicrleText: 'BBS NEWS',
                  comment: '340',
                  view: '347.71k',
                  postTime: '1 days',
                ),

                const SizedBox(height: 20),

                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container newsDetailsImageBuild() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            Article.articles[2].imageUrl,
            // 'https://daryo.uz/static/gettyimages-1496424711-1024x1024.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
