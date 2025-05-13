import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hci_project/features/auth/view/register_view.dart';

import 'constant/shared_preference.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.cacheInitialization();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: RegisterView(),
    );
  }
}
