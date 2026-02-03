import 'package:flutter/material.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName, style: Theme.of(context).textTheme.displayMedium),
                  Text(title, style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey,
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}