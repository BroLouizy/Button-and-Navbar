import 'package:flutter/material.dart';
import 'package:tugas_profile/pages/profile_page.dart';
import 'package:tugas_profile/pages/chat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Biodata Pribadi'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Nama:", style: TextStyle(color: Colors.grey)),
            Text("Muhammad Andi Ghalib", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 16),

            Text("Fakultas:", style: TextStyle(color: Colors.grey)),
            Text("Fakultas Teknik Informatika", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 16),

            Text("Alamat:", style: TextStyle(color: Colors.grey)),
            Text("Jl. Melati No. 45, Surakarta", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 16),

            Text("Email:", style: TextStyle(color: Colors.grey)),
            Text("andii@gmail.com", style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 16),

            Text("Tanggal Lahir:", style: TextStyle(color: Colors.grey)),
            Text("12 Mei 2005", style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
