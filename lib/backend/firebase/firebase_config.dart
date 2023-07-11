import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDuRAiMJVWjtSw1M4fbOmhnP8anHrG3ZRY",
            authDomain: "hprms-848cf.firebaseapp.com",
            projectId: "hprms-848cf",
            storageBucket: "hprms-848cf.appspot.com",
            messagingSenderId: "240112734151",
            appId: "1:240112734151:web:51897eb64d0bb7dbf853e2",
            measurementId: "G-X470NR9X9S"));
  } else {
    await Firebase.initializeApp();
  }
}
