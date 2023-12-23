import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBvS6odL9dVTlkEBxQ3M4Ds1KcNm1fL9Vc",
            authDomain: "escalaigrejas.firebaseapp.com",
            projectId: "escalaigrejas",
            storageBucket: "escalaigrejas.appspot.com",
            messagingSenderId: "932822099254",
            appId: "1:932822099254:web:59032809519bf7b69fff97",
            measurementId: "G-5D27KJ1H3X"));
  } else {
    await Firebase.initializeApp();
  }
}
