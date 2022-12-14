// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBcXZRTm6ZpFNzbu-0wCkkVcOZ6q4CkXlM',
    appId: '1:676436299660:web:4d2044da779bd60af790a9',
    messagingSenderId: '676436299660',
    projectId: 'lab-app-96fa0',
    authDomain: 'lab-app-96fa0.firebaseapp.com',
    storageBucket: 'lab-app-96fa0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAl-yWmmKGWVpoAexnjbqBfEKVh4_jt-bg',
    appId: '1:676436299660:android:edcbfda2a6e3d8b7f790a9',
    messagingSenderId: '676436299660',
    projectId: 'lab-app-96fa0',
    storageBucket: 'lab-app-96fa0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBH8bfE2ahXgfgQaxS6-u2caxl9OWyWn04',
    appId: '1:676436299660:ios:1327adce90ace8ddf790a9',
    messagingSenderId: '676436299660',
    projectId: 'lab-app-96fa0',
    storageBucket: 'lab-app-96fa0.appspot.com',
    iosClientId: '676436299660-6mgu5fu2fimgpo86m75cet474j1tej09.apps.googleusercontent.com',
    iosBundleId: 'com.example.mmapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBH8bfE2ahXgfgQaxS6-u2caxl9OWyWn04',
    appId: '1:676436299660:ios:1327adce90ace8ddf790a9',
    messagingSenderId: '676436299660',
    projectId: 'lab-app-96fa0',
    storageBucket: 'lab-app-96fa0.appspot.com',
    iosClientId: '676436299660-6mgu5fu2fimgpo86m75cet474j1tej09.apps.googleusercontent.com',
    iosBundleId: 'com.example.mmapp',
  );
}
