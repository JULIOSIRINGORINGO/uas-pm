import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  final String nama;
  const ChatDetailPage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nama)),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Haii $nama"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ketik pesan...",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                suffixIcon: const Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}