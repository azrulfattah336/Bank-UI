import 'package:flutter/material.dart';

void main() {
  runApp(const BrimoStyleApp());
}

class BrimoStyleApp extends StatelessWidget {
  const BrimoStyleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brimo Style Home',
      home: HomePage(),
    );
  }
}