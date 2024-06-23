import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:healnet/authentication/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBol_07zbccp0_N_hJs-LCOREuuueFpwy0',
      appId: '1:54472037214:android:9f295cbd246e2e348975cf',
      messagingSenderId: '54472037214',
      projectId: 'healnet-d37f5',
      storageBucket: 'healnet-d37f5.appspot.com',
    )
  );runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HealNet",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const SignUpScreen(), // Ensure SignUpScreen is a StatelessWidget or StatefulWidget
    );
  }
}
