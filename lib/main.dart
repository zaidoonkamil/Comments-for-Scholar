import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/chat_page.dart';
import 'pages/login_page.dart';
import 'pages/resgister_page.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id : (context) => ChatPage()
      },
      initialRoute: LoginPage.id,
    );
  }
}
