import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettinsProfile extends StatelessWidget {
  const SettinsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Sozlamalar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // backgroundColor: Colors.blue,
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'General',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(width: 7),
                  const Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Customize Interests',
                CupertinoIcons.square_grid_2x2,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Personal Info',
                Icons.person_outline_rounded,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Notification',
                Icons.notifications_none_outlined,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Security',
                Icons.security,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                  'Language',
                  // Icons.language,
                  CupertinoIcons.doc_plaintext),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const SizedBox(width: 7),
                  const Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Follow us on Social',
                CupertinoIcons.link_circle,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Help Center',
                Icons.help_outline_sharp,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'Privacy Policy',
                CupertinoIcons.lock,
              ),
              const SizedBox(height: 18),
              settingsListTilebuild(
                'About Newsline',
                CupertinoIcons.exclamationmark_octagon,
              ),
              const SizedBox(height: 18),
              const Row(
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.login_rounded,
                          color: Colors.red.shade400,
                          size: 22,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade400,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  InkWell settingsListTilebuild(
    String text1,
    IconData icon,
  ) {
    return InkWell(
      // onTap: ontap1,
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                // CupertinoIcons.square_grid_2x2,
                icon,
                color: Colors.grey.shade700,
                size: 22,
              ),
              const SizedBox(width: 8),
              Text(
                // 'Customize Interests',
                text1,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.grey.shade600,
          ),
        ],
      ),
    );
  }
}
