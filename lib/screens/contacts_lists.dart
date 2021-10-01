// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:contact_app/models/contacts.dart';
import 'package:contact_app/screens/singlepage.dart';
import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';

class ContactListsPage extends StatelessWidget {
  final Contact contact;

  ContactListsPage({required this.contact}) : super();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SingleContactPage(
              contact: contact,
            ),
          ),
        );
      },
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Avatar(
            name: '${contact.name} ${contact.surname}',
            shape: AvatarShape.circle(20)),
      ),
      contentPadding: EdgeInsets.only(top: 6, left: 16, bottom: 6),
      title: Text(
        "${contact.name} ${contact.surname}",
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        contact.email,
        style: TextStyle(color: Colors.white70),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Icon(
          Icons.phone_outlined,
          size: 28,
        ),
      ),
    );
  }
}
