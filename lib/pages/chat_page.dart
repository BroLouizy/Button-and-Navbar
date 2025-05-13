import 'package:flutter/material.dart';
import 'package:tugas_profile/pages/profile_page.dart';
import 'package:tugas_profile/pages/home_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = [
      {
        "name": "Richard",
        "message": "Lagi ngoding Flutter...",
        "time": "10:45",
        "image": "images/foto1.jpg"
      },
      {
        "name": "Axel",
        "message": "Nanti ketemuan yuk",
        "time": "09:20",
        "image": "images/foto2.jpg"
      },
      {
        "name": "Timoty",
        "message": "Oke, sampai jumpa!",
        "time": "Kemarin",
        "image": "images/foto3.jpg"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Pesan"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(chat["image"]!),
            ),
            title: Text(chat["name"]!, style: const TextStyle(color: Colors.white)),
            subtitle: Text(chat["message"]!, style: const TextStyle(color: Colors.white70)),
            trailing: Text(chat["time"]!, style: const TextStyle(color: Colors.white54, fontSize: 12)),
            onTap: () {
              // nanti bisa diarahkan ke halaman detail chat
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}