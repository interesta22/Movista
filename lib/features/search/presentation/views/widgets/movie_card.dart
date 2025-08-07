import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:movista_app/core/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          // Movie Poster
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://image.tmdb.org/t/p/w200/53dsJ3oEnBhTBVMigWJ9tkA5bzJ.jpg', // تأكد إن الصورة دي موجودة في assets
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),

          // Movie Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Movie Title
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  'Spiderman',
                  style: AppTextStyles.font20BlackBold.copyWith(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
                const SizedBox(height: 8),

                // Rating
                Row(
                  children: const [
                    Icon(
                      HugeIcons.strokeRoundedStar,
                      color: Colors.orange,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text('9.5', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 8),

                // Genre
                Row(
                  children: const [
                    Icon(
                      HugeIcons.strokeRoundedTicket01,
                      color: Colors.white60,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text('Action', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 6),

                // Year
                Row(
                  children: const [
                    Icon(
                      HugeIcons.strokeRoundedCalendar01,
                      color: Colors.white60,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text('2019', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 6),

                // Duration
                Row(
                  children: const [
                    Icon(
                      HugeIcons.strokeRoundedTime01,
                      color: Colors.white60,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text('139 minutes', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
