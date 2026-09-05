import 'package:flutter/material.dart';

class StoryHighlight extends StatelessWidget {
  const StoryHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    final highlights = [
      ('Projects', 'https://picsum.photos/200?1'),
      ('Flutter', 'https://picsum.photos/200?2'),
      ('Travel', 'https://picsum.photos/200?3'),
      ('Friends', 'https://picsum.photos/200?4'),
      ('More', 'https://picsum.photos/200?5'),
    ];

    return SizedBox(
      height: 92,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: highlights.length,
        separatorBuilder: (_, __) =>
        const SizedBox(width: 18),
        itemBuilder: (context, index) {
          final item = highlights[index];

          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(item.$2),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item.$1,
                style: const TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}