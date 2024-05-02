import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBrKObrn2QkLsd43EeXrxEeCkIjxrSyo3w",
            authDomain: "nexus-l7sgyx.firebaseapp.com",
            projectId: "nexus-l7sgyx",
            storageBucket: "nexus-l7sgyx.appspot.com",
            messagingSenderId: "91014642455",
            appId: "1:91014642455:web:9fb8ccaf89f5e8d0209552"));
  } else {
    await Firebase.initializeApp();
  }
}
