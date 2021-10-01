// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:avatars/avatars.dart';
import 'package:contact_app/models/contacts.dart';
import 'package:contact_app/screens/contact_single.dart';
import 'package:flutter/material.dart';

class SingleContactPage extends StatelessWidget {
  final Contact contact;

  SingleContactPage({required this.contact}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(child: Avatar(name: '${contact.name} ${contact.surname}')),
          SizedBox(
            height: 16,
          ),
          Column(children: [
            Text(
              "${contact.name} ${contact.surname}",
              style: Theme.of(context).textTheme.headline1,
            ),
          ]),
          SizedBox(
            height: 28,
          ),
          ContactListSinglePage(
            singleInfo: contact.phone,
            singleIcon: Icons.phone_outlined,
          ),
          ContactListSinglePage(
            singleInfo: contact.email,
            singleIcon: Icons.email_outlined,
          ),
          ContactListSinglePage(
            singleInfo: "${contact.address},\n${contact.city}",
            singleIcon: Icons.location_on_outlined,
          ),
          ContactListSinglePage(
            singleInfo: "@${contact.username}",
            singleIcon: Icons.account_circle_outlined,
          )
        ]),
      ),
    );
  }
}
