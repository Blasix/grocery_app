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
    apiKey: 'AIzaSyBK71KQ4eSQDrzfDEUXB2CB3T9ywhc1DSw',
    appId: '1:310419662151:web:2491008cdc78cf46b89862',
    messagingSenderId: '310419662151',
    projectId: 'grocery-app-d3c13',
    authDomain: 'grocery-app-d3c13.firebaseapp.com',
    storageBucket: 'grocery-app-d3c13.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxAiTPEV5jI5pUcq2rsP9ujFXZTiyJdZg',
    appId: '1:310419662151:android:ffc372a717843918b89862',
    messagingSenderId: '310419662151',
    projectId: 'grocery-app-d3c13',
    storageBucket: 'grocery-app-d3c13.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCih5TGMLGnTCm3CqhfHQknxEJhdqgWqCk',
    appId: '1:310419662151:ios:758073114ae081e0b89862',
    messagingSenderId: '310419662151',
    projectId: 'grocery-app-d3c13',
    storageBucket: 'grocery-app-d3c13.appspot.com',
    iosClientId:
        '310419662151-kbb3r621eo1kle6b38kqpilhihheb7d9.apps.googleusercontent.com',
    iosBundleId: 'net.blasix.grocery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCih5TGMLGnTCm3CqhfHQknxEJhdqgWqCk',
    appId: '1:310419662151:ios:758073114ae081e0b89862',
    messagingSenderId: '310419662151',
    projectId: 'grocery-app-d3c13',
    storageBucket: 'grocery-app-d3c13.appspot.com',
    iosClientId:
        '310419662151-kbb3r621eo1kle6b38kqpilhihheb7d9.apps.googleusercontent.com',
    iosBundleId: 'net.blasix.grocery',
  );
}
