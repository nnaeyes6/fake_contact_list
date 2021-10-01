// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ContactListSinglePage extends StatelessWidget {
  const ContactListSinglePage(
      {required this.singleInfo, required this.singleIcon})
      : super();

  final String singleInfo;
  final IconData singleIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 6, left: 24, bottom: 6),
      leading: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Icon(
          singleIcon,
          size: 28,
        ),
      ),
      title: Text(singleInfo),
    );
  }
}
