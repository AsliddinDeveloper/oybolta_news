import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:oybolta_news/profile/modul/article_modul.dart';

class AurthorImages extends StatelessWidget {
  const AurthorImages({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: NestedScrollView(
      //   headerSliverBuilder: (context, innerBoxIsScrolled) => [
      //     SliverAppBar(
      //       backgroundColor: Colors.blue.shade600,
      //       centerTitle: true,
      //       title: const Text('Profile Image'),
      //       elevation: 0,
      //     ),
      //   ],
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade600,
      //   centerTitle: true,
      //   title: const Text('Profile Image'),
      //   elevation: 0,
      // ),
      body: InteractiveViewer(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(CupertinoIcons.arrow_left),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Profile Images',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
      // ),
    );
  }
}
