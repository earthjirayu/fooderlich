import 'package:flutter/material.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag2.jpg'), // อย่าลืมเพิ่มรูปใน pubspec.yaml
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Earth Jirayu',
              title: 'Coca Cola',
              imageProvider: AssetImage('assets/images/author_dark.png'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text('Recipe', style: Theme.of(context).textTheme.displayLarge),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text('Soft Drink', style: Theme.of(context).textTheme.displayLarge),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}