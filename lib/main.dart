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
  int selectedIndex = 0;
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
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Saldo Rekening",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Rp ${saldo.toStringAsFixed(0)}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange[400],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            "BRI Silver",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      quickMenu(Icons.send, "Transfer"),
                      quickMenu(Icons.payment, "BRIVA"),
                      quickMenu(Icons.phone_android, "Pulsa"),
                      quickMenu(Icons.qr_code_scanner, "QRIS"),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Fitur Lainnya",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                quickMenu(Icons.credit_card, "BRIZZI"),
                quickMenu(Icons.account_balance_wallet, "E-Wallet"),
                quickMenu(Icons.savings, "Tabungan"),
                quickMenu(Icons.receipt_long, "Tagihan"),
              ],
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                quickMenu(Icons.phone_android, "Pulsa"),
                quickMenu(Icons.lightbulb, "Listrik"),
                quickMenu(Icons.water_drop, "PDAM"),
                quickMenu(Icons.more_horiz, "Lainnya"),
              ],
            ),
          ],
        ),
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
  currentIndex: selectedIndex,
  onTap: (index) {
    setState(() {
      selectedIndex = index;
    });
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: "Riwayat",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Akun",
    ),
  ],
),
    );
  }

   Widget quickMenu(IconData icon, String label) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, size: 28, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
