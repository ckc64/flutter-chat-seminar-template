// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDvu-phlE5uqato0igUEVeVDSsafkPyM60',
    appId: '1:981666716943:web:b5ec2f1f193277d06cf27a',
    messagingSenderId: '981666716943',
    projectId: 'flutter-chat-32806',
    authDomain: 'flutter-chat-32806.firebaseapp.com',
    storageBucket: 'flutter-chat-32806.firebasestorage.app',
    measurementId: 'G-4B0WK17C7N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmPQWInMghsb8CK_5SzonIMW6O75y6s80',
    appId: '1:981666716943:android:6ea7c531ddf99c986cf27a',
    messagingSenderId: '981666716943',
    projectId: 'flutter-chat-32806',
    storageBucket: 'flutter-chat-32806.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeime_nHwBSFQBnZknfdN0dS_SrRDBhbQ',
    appId: '1:981666716943:ios:8ee1db03a577b0756cf27a',
    messagingSenderId: '981666716943',
    projectId: 'flutter-chat-32806',
    storageBucket: 'flutter-chat-32806.firebasestorage.app',
    iosBundleId: 'com.example.flutterChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeime_nHwBSFQBnZknfdN0dS_SrRDBhbQ',
    appId: '1:981666716943:ios:8ee1db03a577b0756cf27a',
    messagingSenderId: '981666716943',
    projectId: 'flutter-chat-32806',
    storageBucket: 'flutter-chat-32806.firebasestorage.app',
    iosBundleId: 'com.example.flutterChat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDvu-phlE5uqato0igUEVeVDSsafkPyM60',
    appId: '1:981666716943:web:4bfa31bf439b320a6cf27a',
    messagingSenderId: '981666716943',
    projectId: 'flutter-chat-32806',
    authDomain: 'flutter-chat-32806.firebaseapp.com',
    storageBucket: 'flutter-chat-32806.firebasestorage.app',
    measurementId: 'G-JX88RKRFTN',
  );

}