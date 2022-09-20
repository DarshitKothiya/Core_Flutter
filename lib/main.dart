import 'package:flutter/material.dart';
import 'package:kbc_game/screen/homepage.dart';
import 'package:kbc_game/screen/page1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': ((context) =>  const homepage()),
        'page1': ((context) => const result()),
      },
    ),
  );
}
