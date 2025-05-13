import 'package:flutter/material.dart';
import 'package:tugas_profile/gantitema.dart';
import 'package:tugas_profile/pages/home_page.dart';
import 'package:tugas_profile/pages/chat_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDark = true;

  void updateTema(bool isDarkMode) {
    setState(() {
      isDark = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = isDark ? Colors.black : Colors.white;
    final Color textColor = isDark ? Colors.white : Colors.black;
    final Color subTextColor = isDark ? Colors.white70 : Colors.black54;
    final Color buttonColor = isDark ? Colors.grey[800]! : Colors.grey[300]!;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 40,
              backgroundImage: const AssetImage('images/pp.jpg'),
            ),
            const SizedBox(height: 8),
            Text("@ ey.andii_", style: TextStyle(color: textColor, fontSize: 18)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildColumn("76", "Following", textColor, subTextColor),
                const SizedBox(width: 24),
                _buildColumn("56.7K", "Followers", textColor, subTextColor),
                const SizedBox(width: 24),
                _buildColumn("1.2M", "Likes", textColor, subTextColor),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton("Edit profile", buttonColor, textColor),
                const SizedBox(width: 8),
                _buildButton("Share profile", buttonColor, textColor),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: textColor,
                  ),
                  child: Icon(Icons.person_add_alt_1, size: 16, color: textColor),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text("Add bio", style: TextStyle(color: subTextColor, fontSize: 12)),
            const SizedBox(height: 8),
            Gantitema(onTemaChange: updateTema),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.grid_view, color: textColor),
                Icon(Icons.lock_outline, color: subTextColor),
                Icon(Icons.repeat, color: subTextColor),
                Icon(Icons.bookmark_border, color: subTextColor),
                Icon(Icons.favorite_border, color: subTextColor),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  final images = [
                    'images/ft1.jpeg',
                    'images/ft2.jpg',
                    'images/ft4.jpeg',
                    'images/ft3.png',
                    'images/ft5.jpeg',
                    'images/ft6.jpg',
                    'images/ft7.jpeg',
                    'images/ft8.jpeg',
                    'images/ft9.jpg',
                  ];
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: buttonColor,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: textColor),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: textColor),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat, color: textColor),
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

  Widget _buildColumn(String title, String subtitle, Color titleColor, Color subtitleColor) {
    return Column(
      children: [
        Text(title, style: TextStyle(color: titleColor, fontWeight: FontWeight.bold)),
        Text(subtitle, style: TextStyle(color: subtitleColor, fontSize: 12)),
      ],
    );
  }

  Widget _buildButton(String label, Color bgColor, Color fgColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
      ),
      child: Text(label),
    );
  }
}
