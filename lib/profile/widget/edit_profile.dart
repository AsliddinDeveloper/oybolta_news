import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                  ),
                  // backgroundColor: Colors.orange,
                ),
                const SizedBox(height: 10),
                textfieldBuild('Full Name', 'Avazov Asliddin'),
                const SizedBox(height: 10),
                textfieldBuild('Username', '@Boybobouz'),
                const SizedBox(height: 10),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Bio',
                          // title,
                          style: TextStyle(
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
                        hintMaxLines: 5,
                        hintText:
                            "In a groundbreaking investigative report, a team of journalist has unveiled a web of political caruption that has been shrouded in screcy for far too long. This in-depth expose shines a light an the dark underbelly of poweer, realing shocking revelations and implicating hight-profile figurares in a complex network of unethical practices",
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLength: 200,
                      maxLines: 7,
                    ),
                  ],
                ),
                textfieldBuild('WebSite', 'https://myurls.co/boybobouz'),
                const SizedBox(height: 10),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Saqlash',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column textfieldBuild(String title, String hintText) {
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
}
