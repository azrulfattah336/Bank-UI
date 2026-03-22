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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double saldo = 984750000;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
      title: const Text("Bank UI", style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue[900],
      ),
      body: Padding(
      padding: EdgeInsets.all(w * 0.04),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            ),
           )
         ],
       ),
      ),
    );
  }
}