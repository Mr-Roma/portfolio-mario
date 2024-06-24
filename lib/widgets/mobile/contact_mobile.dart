// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:unique_portfolio/api/user.dart';
import 'package:unique_portfolio/widgets/mobile/contact_button.dart';

class ContactMobile extends StatefulWidget {
  final ValueChanged<User> onSavedUser;

  ContactMobile({
    Key? key,
    required this.onSavedUser,
  }) : super(key: key);

  @override
  _ContactMobileState createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController messageController;

  @override
  void initState() {
    super.initState();
    messageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Drop any message',
              style: GoogleFonts.anton(),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: messageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Message',
              ),
              validator: (value) => value != null && value.isEmpty
                  ? 'Please enter a message'
                  : null,
              maxLines: 5,
            ),
            SizedBox(height: 16),
            ContactButton(onCLicked: () {
              final form = _formKey.currentState!;
              final isValid = form.validate();

              if (isValid) {
                final user = User(message: messageController.text);
                widget.onSavedUser(user);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Message Submitted Successfuly!'),
                ));
                messageController.clear();
              }
            }),
          ],
        ),
      ),
    );
  }
}
