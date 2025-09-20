import 'package:flutter/material.dart';

void main() {
  runApp(const MyInfoApp());
}

class MyInfoApp extends StatelessWidget {
  const MyInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Behruzbek Info',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InfoPage(),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  final String name = "Behruzbek";
  final String surname = "Shavkatjonov";
  final String nation = "O'zbek";
  final String address = "Buvayda tumani, Shor MFY";
  final String school = "15-maktab";
  final String grade = "8-sinf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mening Ma'lumotlarim"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profil rasmi
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue[100],
                child: const Icon(Icons.person, size: 80, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),

            // Asosiy ma'lumotlar
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.badge, color: Colors.blue),
                title: Text("Ism: $name"),
                subtitle: Text("Familiya: $surname"),
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.flag, color: Colors.green),
                title: Text("Millat: $nation"),
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.home, color: Colors.orange),
                title: Text("Yashash joyi:"),
                subtitle: Text(address),
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.school, color: Colors.red),
                title: Text("Maktab: $school"),
                subtitle: Text("Sinf: $grade"),
              ),
            ),

            const SizedBox(height: 20),

            // Qo'shimcha matn
            const Text(
              "Men Behruzbek Shavkatjonovman. Men o‘zbek millatiga mansubman va "
                  "hozirda Buvayda tumanidagi Shor mahallasida yashayman. "
                  "Men 15-maktabda 8-sinf o‘quvchisiman. "
                  "Kelajakda yaxshi dasturchi bo‘lishni va Android ilovalar yaratishni xohlayman. "
                  "Bo‘sh vaqtimda kitob o‘qiyman, sport bilan shug‘ullanaman va yangi texnologiyalarni o‘rganaman.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 30),

            // Tugma
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Sizning ma'lumotlaringiz ko‘rsatildi ")),
                );
              },
              icon: const Icon(Icons.check_circle),
              label: const Text("Tasdiqlash"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

