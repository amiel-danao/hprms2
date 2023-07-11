// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<FecalysisRecord?> checkIfLabResultExists(
    String collection, String appointmentId) async {
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection(collection);

  var docRef =
      FirebaseFirestore.instance.collection("appointments").doc(appointmentId);

  var querySnapshot =
      await collectionRef.where('appointmentId', isEqualTo: docRef).get();

  if (querySnapshot.docs.isEmpty) {
    return null;
  }

  return FecalysisRecord.fromSnapshot(querySnapshot.docs.first);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
