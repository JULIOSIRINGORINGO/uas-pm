import 'package:flutter/material.dart';
import 'page.dart';

class ChatItem extends StatelessWidget {
  final String nama;
  final String jam;
  final String foto;
  final String pesan; 

  const ChatItem({
    super.key, 
    required this.nama, 
    required this.jam, 
    required this.foto,
    required this.pesan, 
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatDetailPage(nama: nama),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)]),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        padding: const EdgeInsets.all(12),
        child: Row(children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/$foto'),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.done_all,
                      size: 18, 
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Expanded( 
                      child: Text(
                        pesan, 
                        style: const TextStyle(color: Colors.grey),
                        overflow: TextOverflow.ellipsis, 
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            jam,
            style: const TextStyle(color: Colors.black45, fontSize: 12),
          ),
        ]),
      ),
    );
  }
  
}