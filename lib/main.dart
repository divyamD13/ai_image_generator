import 'package:ai_image_generator/features/prompt/ui/create_promt_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade900,
        ),
        useMaterial3: false,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueGrey.shade800,
      ),
      home: CreatePromptScreen(),
    );
  }
}