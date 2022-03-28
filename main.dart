import 'package:flutter/material.dart';
import 'package:hafta4resimbuton/butonlar.dart';
import 'package:hafta4resimbuton/resimbuton.dart';
import 'package:hafta4resimbuton/resimler.dart';
import 'menu.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  initialRoute: "/",
  routes: {
    "/":(context)=>Menu(),
    "/butonlar":(context)=>Butonlar(),
    "/resimler":(context)=>Resimler(),
    "/resimbuton":(context)=>ResimButon(),
  },));
}
