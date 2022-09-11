import 'package:flutter/material.dart';
import 'package:rickandmorty/helpers/appcolors.dart';
import 'package:rickandmorty/helpers/appfonts.dart';
import 'package:rickandmorty/helpers/apptexts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: AppTexts.appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title,
              style: const TextStyle(
                  fontFamily: AppFonts.primaryFontFamily,
                  fontSize: AppFonts.primaryFontSize,
                  color: AppColors.lightColor)),
          centerTitle: true,
          backgroundColor: AppColors.blueColor,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
