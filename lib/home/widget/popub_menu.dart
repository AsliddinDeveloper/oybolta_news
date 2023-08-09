import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget PopupMenu(BuildContext context) => buildMenu(context);

Widget buildMenu(BuildContext context) {
  return PopupMenuButton<String>(
    itemBuilder: (context) => buildList(),
    icon: Icon(Icons.more_vert),
  );
}

List<PopupMenuItem<String>> buildList() {
  return [
    const PopupMenuItem(
      child: Row(
        children: [
          Icon(CupertinoIcons.bookmark),
          SizedBox(width: 6),
          Text(
            'Save to Bookmark',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
        ],
      ),
    ),
    const PopupMenuItem(
      child: Row(
        children: [
          Icon(CupertinoIcons.xmark_square),
          SizedBox(width: 6),
          Text(
            'Hidi this',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
        ],
      ),
    ),
    const PopupMenuItem(
      child: Row(
        children: [
          Icon(CupertinoIcons.exclamationmark_octagon),
          SizedBox(width: 6),
          Text(
            'Report this',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
        ],
      ),
    ),
    const PopupMenuItem(
      child: Row(
        children: [
          Icon(CupertinoIcons.ellipses_bubble),
          SizedBox(width: 6),
          Text(
            'Send Feedback',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
        ],
      ),
    ),
  ];
}
