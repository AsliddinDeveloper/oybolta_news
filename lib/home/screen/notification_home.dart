import 'package:flutter/material.dart';

class NotificationHomeAppbarScreen extends StatelessWidget {
  const NotificationHomeAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Notification', style: TextStyle(
          color: Colors.black,
        ),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 18,
            right: 18,
          ),
          child: Column(
            children: [
              notificationLisTile1(),
              notificationLisTile1(),
              notificationLisTile1(),
              notificationLisTile1(),
              notificationLisTile1(),
              notificationLisTile1(),
              notificationLisTile1(),
            ],
          ),
        ),
      ),
    );
  }

  Column notificationLisTile1() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Today',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(width: 4),
            Container(
              height: 60,
              color: Colors.grey.shade300,
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  height: 8,
                ),
              ),
            ),
          ],
        ),
        ListTile(
          leading: IconButton.outlined(
            onPressed: () {},
            icon: const Icon(Icons.newspaper),
          ),
          // leading: Container(
          //   height: 100,
          //   width: 80,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(20)),
          //     image: const DecorationImage(
          //       image: NetworkImage(
          //         'https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJicyUyMG5ld3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
          //       ),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),

          // CircleAvatar(
          //   radius: 30,

          //   backgroundImage: NetworkImage(
          //       'https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJicyUyMG5ld3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
          // ),
          title: const Text('Cnn News published a new story'),
          subtitle: const Text('09:40 Am'),
          trailing: Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1593789198777-f29bc259780e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGJicyUyMG5ld3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJicyUyMG5ld3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
          ),
          title: const Text('Cnn News published a new story'),
          subtitle: const Text('10:03 Am'),
          trailing: InkWell(
            onLongPress: () {},
            child: Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Text(
                'FollowBack',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: const NetworkImage(
                'https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJicyUyMG5ld3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
          ),
          title: const Text('Cnn News published a new story'),
          subtitle: const Text('09:40 Am'),
          trailing: Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1593789198777-f29bc259780e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGJicyUyMG5ld3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
