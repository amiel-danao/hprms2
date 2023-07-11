// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_email_sender/flutter_email_sender.dart';

Future<void> sendEmailNotif(String emailRecipient) async {
  final Email email = Email(
    body:
        'Good day, I would to inform you that you\'re lab result is now ready to be picked up at the clinic.\n Be sure to drop by between 4pm-6pm.\n Thank you',
    subject: 'Appointment Lab Result',
    recipients: [emailRecipient],
    cc: ['cc@example.com'],
    bcc: ['bcc@example.com'],
    isHTML: false,
  );

  await FlutterEmailSender.send(email);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
