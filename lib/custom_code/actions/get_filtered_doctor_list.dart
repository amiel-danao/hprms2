// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<UsersRecord>> getFilteredDoctorList(
    String date, String specialization) async {
  List<String> targetSpecializations = [specialization.toLowerCase()];

  print('specialization is $specialization');

  final QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('users')
      .where('type', isEqualTo: 2)
      .where('specialization', arrayContainsAny: targetSpecializations)
      .get();
  var splittedDate = date.split(",");
  String dayOfWeek = splittedDate[0]; //DateFormat('EEEE').format(selectedDate);

  List<UsersRecord> filteredDoctors = [];

  for (DocumentSnapshot doc in snapshot.docs) {
    UsersRecord user = UsersRecord.fromSnapshot(doc);

    DocumentSnapshot scheduleDoc = await FirebaseFirestore.instance
        .collection('schedules')
        .doc(user.uid)
        .get();

    if (scheduleDoc.exists) {
      var scheduleData = scheduleDoc.data() as Map<String, dynamic>;
      List<String> availability =
          List<String>.from(scheduleData['availability']);

      if (availability.contains(dayOfWeek)) {
        filteredDoctors.add(user);
      }
    }
  }
  // return snapshot.docs.map((doc) {
  //   print("LOLzzzzzzzzzzzzzz");
  //   return UsersRecord.fromSnapshot(doc);
  // }).toList();

  return filteredDoctors;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
