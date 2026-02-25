import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const Customcard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/thumbnails/054/557/418/small/a-girl-with-headphones-on-her-head-free-vector.jpg',
           ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}