import 'package:flutter/material.dart';


class ContactsViewScreen extends StatelessWidget {
   static final route = "ContactsViewScreen";

  const ContactsViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Text("chat screen"),
      ),
    );
  }
}