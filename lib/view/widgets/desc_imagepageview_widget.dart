import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImagePageViewWidget extends ConsumerWidget {
  const ImagePageViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 8 * 40,
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            final imageUrls = [
              'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
              'https://i.pinimg.com/736x/d7/46/d9/d746d98d33ba9f4068c382cd0fbde00c.jpg',
              'https://wallpapers.com/images/featured/iphone-dark-w49769dywehudag6.jpg',
            ];
            final imageUrl = imageUrls[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width / 1.2,
              ),
            );
          },
        ),
      ),
    );
  }
}
