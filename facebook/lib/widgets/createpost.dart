import 'package:flutter/material.dart';

class Createpost extends StatelessWidget {
  final VoidCallback? onpostcreate;
  const Createpost({super.key,this.onpostcreate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof1.jpg"),
      ),
      title: TextField(
        decoration: const InputDecoration(
          hintText: "What's on your mind?",
          border: InputBorder.none,
          ),
          onTap: onpostcreate,
      ),
      trailing: const Icon(Icons.image),
    );
      
  }
}