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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDU9UE9xl7fxTEXcIPbR82voFVgFZ-IcRg',
    appId: '1:417779269632:web:e0dbc6fced3236ca2e98e5',
    messagingSenderId: '417779269632',
    projectId: 'sdgm-digitech-guide-map',
    authDomain: 'sdgm-digitech-guide-map.firebaseapp.com',
    storageBucket: 'sdgm-digitech-guide-map.appspot.com',
    measurementId: 'G-ZGRG80FHJQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDn5DleFzWb1TXaJC3WMkazPWmsc9llpfg',
    appId: '1:417779269632:android:65f79d8f5789116a2e98e5',
    messagingSenderId: '417779269632',
    projectId: 'sdgm-digitech-guide-map',
    storageBucket: 'sdgm-digitech-guide-map.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYMufgas0Aawxy_e5CYg4ClzOPvgVSiMo',
    appId: '1:417779269632:ios:286ba3969f989be22e98e5',
    messagingSenderId: '417779269632',
    projectId: 'sdgm-digitech-guide-map',
    storageBucket: 'sdgm-digitech-guide-map.appspot.com',
    iosBundleId: 'com.example.sdhomepage',
  );
}