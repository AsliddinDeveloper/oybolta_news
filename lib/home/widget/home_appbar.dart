import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeAppbar extends StatelessWidget {
  const homeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
    
    
    
    
    homeAppbar1();
  }

  Row homeAppbar1() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: const DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1591280063444-d3c514eb6e13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 9),
      Column(
        children: [
          Text(
            'Asliddin, Avazov',
            style: TextStyle(
              fontFamily: GoogleFonts.gabriela().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Text('Welcome Back'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.black12,
                )),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ),
        ],
      ),
    ],
  );
  }
}


//  ListTile(
//       leading: const CircleAvatar(
//         // radius: 40,
//         backgroundImage: NetworkImage(
//           'https://images.unsplash.com/photo-1591280063444-d3c514eb6e13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
//         ),
//       ),
//       title: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 20,
//         ),
//         child: Text(
//           'Asliddin, Avazov',
//           style: TextStyle(
//             fontFamily: GoogleFonts.gabriela().fontFamily,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       subtitle: const Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 20,
//         ),
//         child: Text('Welcome Back'),
//       ),
//       trailing: Container(
//         decoration: BoxDecoration(
//             color: Colors.grey.shade200,
//             borderRadius: BorderRadius.circular(30),
//             border: Border.all(
//               color: Colors.black12,
//             )),
//         child: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.notifications),
//         ),
//       ),
//     );