// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DocumentReference?> getDoctorRefByName(String doctorName) async {
  CollectionReference sectionsRef =
      FirebaseFirestore.instance.collection('users');

  QuerySnapshot snapshot = await sectionsRef
      .where('display_name', isEqualTo: doctorName)
      .where('type', isEqualTo: 2)
      .limit(1)
      .get();

  if (snapshot.docs.isNotEmpty) {
    DocumentSnapshot document = snapshot.docs.first;
    return document.reference;
  }

  return null;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
