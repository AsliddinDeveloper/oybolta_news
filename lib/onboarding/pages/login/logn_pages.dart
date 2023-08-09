import 'package:flutter/material.dart';
import '../../componentes/bottom_text.dart';
import '../../componentes/logo.dart';
import '../../componentes/my_button.dart';
import '../../componentes/my_textfield.dart';
import '../../componentes/social_network_logo.dart';
import '../../componentes/text_title.dart';
import '../../screen/home_screen.dart';
import '../sign/signin_pages.dart';

class LogInPages extends StatelessWidget {
  const LogInPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: Logo(
                imageUrl:
                    "https://cdn-icons-png.flaticon.com/128/6261/6261542.png",
              ),
            ),
            const TextTitle(title: "Boybobo Developer", subtitle: "Login Page"),
            const SizedBox(height: 20),
            MyTextField(
              title: "Email",
              subtitle: "Emailni kiriting....!",
              obscureText: false,
            ),
            MyTextField(
              obscureText: true,
              title: "Parol",
              subtitle: "Parolni kiriting....!",
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Parolni tiklash"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const HomeScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialNetworkLogo(
                  imageUrl:
                      "https://cdn-icons-png.flaticon.com/128/168/168754.png",
                ),
                SizedBox(width: 20),
                SocialNetworkLogo(
                  imageUrl:
                      "https://cdn-icons-png.flaticon.com/128/270/270781.png",
                ),
                SizedBox(width: 20),
                SocialNetworkLogo(
                  imageUrl:
                      "https://cdn-icons-png.flaticon.com/128/2875/2875404.png",
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: BottomText(
                ontapTitle: "Ro'yhatdan o'tish",
                title: "Yangi Profile yaratish  ",
                ontap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const SignInPages(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
