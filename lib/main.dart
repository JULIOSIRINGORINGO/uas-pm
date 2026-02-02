import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MyPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<Map<String, String>> chatData = [
      {"nama": "Julio Siringoringo", "jam": "08:00", "foto": "foto1.jpg", "pesan": "otw kampus "},
      {"nama": "Jacklinius", "jam": "09:15", "foto": "foto2.jpg", "pesan": "tugasnya udah selesai?"},
      {"nama": "Sapril", "jam": "10:30", "foto": "foto3.jpg", "pesan": "P"},
      {"nama": "Heri Lukito", "jam": "11:45", "foto": "foto4.jpg", "pesan": "oke siap"},
      {"nama": "Budiono", "jam": "13:20", "foto": "foto5.jpg", "pesan": "besok kumpul dimana?"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Chat")),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          return ChatItem(
            nama: chatData[index]["nama"]!,
            jam: chatData[index]["jam"]!,
            foto: chatData[index]["foto"]!,
            pesan: chatData[index]["pesan"]!, 
          );
        },
      ),
    );
  }
}