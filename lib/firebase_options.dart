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
    apiKey: 'AIzaSyCFRogqvKbzrvEVQkmKy0SlH9JzKGtiC4o',
    appId: '1:768130032687:web:c76d3d4a2e15eb8f4fd2da',
    messagingSenderId: '768130032687',
    projectId: 'flashchat619',
    authDomain: 'flashchat619.firebaseapp.com',
    storageBucket: 'flashchat619.appspot.com',
    measurementId: 'G-T977CMGVRG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJ85Jge8MEpxK0UYQXTaIVvrh4lj2dqYA',
    appId: '1:768130032687:android:caccaea3a356cdaa4fd2da',
    messagingSenderId: '768130032687',
    projectId: 'flashchat619',
    storageBucket: 'flashchat619.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJYfS7FwMMx91Xc2510zVCwiWeN-BLkSk',
    appId: '1:768130032687:ios:bfd06b8fb4b5a0294fd2da',
    messagingSenderId: '768130032687',
    projectId: 'flashchat619',
    storageBucket: 'flashchat619.appspot.com',
    iosBundleId: 'com.example.flashchat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJYfS7FwMMx91Xc2510zVCwiWeN-BLkSk',
    appId: '1:768130032687:ios:ccb86a2620cc09ad4fd2da',
    messagingSenderId: '768130032687',
    projectId: 'flashchat619',
    storageBucket: 'flashchat619.appspot.com',
    iosBundleId: 'com.example.flashchat.RunnerTests',
  );
}
