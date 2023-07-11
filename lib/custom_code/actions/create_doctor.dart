// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<String> createDoctor(
    String email,
    String password,
    int age,
    String firstName,
    String lastName,
    String userSex,
    List<String> specialization) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Create user document in Firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user!.uid)
        .set({
      'uid': userCredential.user!.uid,
      'email': email,
      'age': age,
      'first_name': firstName,
      'last_name': lastName,
      'display_name': '$firstName $lastName',
      'type': 2,
      'userSex': userSex,
      'specialization': specialization
      // Add additional user fields as needed
    });

    return 'success';
  } catch (e) {
    return 'Error creating user: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
