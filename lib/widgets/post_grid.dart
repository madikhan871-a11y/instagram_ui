import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  const PostGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = List.generate(
      15,
          (index) =>
      'https://picsum.photos/500/500?random=${index + 10}',
    );

    return Column(
      children: [
        const Divider(
          height: 1,
          color: Color(0xFFE5E5E5),
        ),

        const SizedBox(height: 8),

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.grid_on_rounded,
              size: 23,
            ),
            Icon(
              Icons.video_library_outlined,
              size: 23,
              color: Colors.grey,
            ),
            Icon(
              Icons.person_pin_outlined,
              size: 23,
              color: Colors.grey,
            ),
          ],
        ),

        const SizedBox(height: 8),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: posts.length,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Image.network(
              posts[index],
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) {
                return Container(
                  color: Colors.grey.shade200,
                  child: const Icon(
                    Icons.image_outlined,
                    color: Colors.grey,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}