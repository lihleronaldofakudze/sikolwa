import 'package:flutter/material.dart';

Widget drawerButton(BuildContext context, String link,Icon icon,String text) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
      Navigator.pushNamed(context, link);
    },
    child: ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    ),
  );
}
