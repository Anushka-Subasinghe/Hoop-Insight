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
    apiKey: 'AIzaSyDYQxpG1H0BRgNYTUD9mJ5HW8OtWoyBWO4',
    appId: '1:524754847129:web:a5ccc729d5b7f3ca953f08',
    messagingSenderId: '524754847129',
    projectId: 'hoop-insight-112ba',
    authDomain: 'hoop-insight-112ba.firebaseapp.com',
    storageBucket: 'hoop-insight-112ba.appspot.com',
    measurementId: 'G-RLDNLKCRKJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFxQZY9nxLZ07Ecxw6PEi6QdkcK4MUGg0',
    appId: '1:524754847129:android:193bfdd8eb8ae459953f08',
    messagingSenderId: '524754847129',
    projectId: 'hoop-insight-112ba',
    storageBucket: 'hoop-insight-112ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfiTzLzh2A2GELlj-lf0HkD8W2l_oOxi4',
    appId: '1:524754847129:ios:fd5df0a0a318c159953f08',
    messagingSenderId: '524754847129',
    projectId: 'hoop-insight-112ba',
    storageBucket: 'hoop-insight-112ba.appspot.com',
    iosClientId: '524754847129-74vqen0rii4kp4oj9uhe2io4mhdropkd.apps.googleusercontent.com',
    iosBundleId: 'com.example.hoopInsight',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfiTzLzh2A2GELlj-lf0HkD8W2l_oOxi4',
    appId: '1:524754847129:ios:fd5df0a0a318c159953f08',
    messagingSenderId: '524754847129',
    projectId: 'hoop-insight-112ba',
    storageBucket: 'hoop-insight-112ba.appspot.com',
    iosClientId: '524754847129-74vqen0rii4kp4oj9uhe2io4mhdropkd.apps.googleusercontent.com',
    iosBundleId: 'com.example.hoopInsight',
  );
}
