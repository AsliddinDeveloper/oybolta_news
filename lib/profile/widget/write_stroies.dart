import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HikoyalarOynasi extends StatelessWidget {
  const HikoyalarOynasi({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Hiyoyalar Yozing',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('Ko\'rish'),
              ),
            ],
          ),
        ],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.photo_fill,
                          size: 45,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Add cover image',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                textfieldBuild1(
                  'Sarlavha',
                  'Sarlavhani matnini yozing',
                ),
                const SizedBox(height: 15),
                textfieldBuild1(
                  'Hikoya',
                  'Bu yerda hikoyangizni yozing...',
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Column textfieldBuild1(String title, String hintText) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            // 'Full Name',
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ],
  );
}
