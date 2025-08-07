import 'package:flutter/material.dart';

class CoverDetailsWidget extends StatelessWidget {
  const CoverDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Backdrop image
        SizedBox(
          height: 275,
          width: double.infinity,
          child: Image.network(
            'https://image.tmdb.org/t/p/w500/enNubozHn9pXi0ycTVYUWfpHZm.jpg',
            fit: BoxFit.cover,
          ),
        ),
    
        // Poster, Title, and Rating
        Positioned(
          bottom: 10,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Poster
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
                  width: 90,
                  height: 135,
                  fit: BoxFit.cover,
                ),
              ),
    
              const SizedBox(width: 12),
    
              // Title
    
              // Rating
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.star, color: Colors.white, size: 16),
                    SizedBox(width: 4),
                    Text("9.5", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
