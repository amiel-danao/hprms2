// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> saveMySchedule(String uid, List<String> availability) async {
  DocumentReference scheduleRef =
      FirebaseFirestore.instance.collection('schedules').doc(uid);

  var userRef = FirebaseFirestore.instance.collection('users').doc(uid);

  Map<String, dynamic> scheduleData = {
    'availability': availability,
    'uid': userRef
  };

  await scheduleRef.set(scheduleData);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
