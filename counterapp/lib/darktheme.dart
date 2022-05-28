 // ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'View/home.dart';

class darktheme extends StatefulWidget {
  const darktheme({Key? key}) : super(key: key);

  @override
  State<darktheme> createState() => _darkthemeState();
}

class _darkthemeState extends State<darktheme> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

debugShowCheckedModeBanner: false,
title: 'Dartheme',
theme: ThemeData(

primarySwatch: Colors.blue,


),
home: const home(),


 );

    
  }
}