import 'package:flutter/material.dart';

import '../../componentes/bottom_text.dart';
import '../../componentes/logo.dart';
import '../../componentes/my_button.dart';
import '../../componentes/my_textfield.dart';
import '../../componentes/text_title.dart';
import '../../screen/home_screen.dart';
import '../login/logn_pages.dart';

class SignInPages extends StatelessWidget {
  const SignInPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 1.0,
              ),
              child: Logo(
                imageUrl:
                    "https://cdn-icons-png.flaticon.com/128/9684/9684447.png",
              ),
            ),
            const TextTitle(
              title: "Boybobo Developer",
              subtitle: "Ro'yhatdan o'tish",
            ),
            const SizedBox(height: 15),
            MyTextField(
              title: "Username",
              subtitle: "Qisqa nomni yozing...!",
              obscureText: false,
            ),
            // const SizedBox(height: 6),
            MyTextField(
              title: "Email",
              subtitle: "Emailni kiriting...!",
              obscureText: false,
            ),
            MyTextField(
              title: "Telefon nomer",
              subtitle: "Telefon nomerizni kiriting...!",
              obscureText: false,
            ),
            MyTextField(
              title: "Parol",
              subtitle: "Parolizni kiriting..!",
              obscureText: false,
            ),
            MyTextField(
              title: "Parolni qaytadan kiriting",
              subtitle: "Parolizni qaytadan kirinting...!",
              obscureText: true,
            ),
            const SizedBox(height: 15),
            MyButton(
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const HomeScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 40),
            BottomText(
              title: "Hisobingiz bormi  ",
              ontapTitle: "Hisobingizga kiring",
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const LogInPages(),
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
