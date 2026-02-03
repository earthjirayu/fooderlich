import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag3.png'), // อย่าลืมใส่รูปใน pubspec และ assets
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // ส่วนที่ 1: พื้นหลังโปร่งแสงทับรูปภาพ
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            // ส่วนที่ 2: เนื้อหาด้านใน
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text('Recipe Trends', style: FooderlichTheme.darkTextTheme.displayMedium),
                  const SizedBox(height: 16),
                  // ส่วนไฮไลท์: การใช้ Wrap และ Chip
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12, // ระยะห่างระหว่าง Chip แต่ละตัว
                    runSpacing: 12, // ระยะห่างระหว่างบรรทัด
                    children: [
                      Chip(label: const Text('Healthy'), onDeleted: () {}),
                      Chip(label: const Text('Vegan'), onDeleted: () {}),
                      const Chip(label: Text('Carrots')),
                      const Chip(label: Text('Greens')),
                      const Chip(label: Text('Wheat')),
                      const Chip(label: Text('Pescetarian')),
                      const Chip(label: Text('Mint')),
                      const Chip(label: Text('Lemongrass')),
                    ],
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