import 'package:flutter/material.dart';

class ExtraDetails extends StatelessWidget {
  const ExtraDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(
            Icons.calendar_today,
            color: Colors.white54,
            size: 16,
          ),
          const SizedBox(width: 4),
          const Text("2021", style: TextStyle(color: Colors.white54)),
    
          const SizedBox(width: 16),
          const Icon(Icons.schedule, color: Colors.white54, size: 16),
          const SizedBox(width: 4),
          const Text(
            "148 Minutes",
            style: TextStyle(color: Colors.white54),
          ),
    
          const SizedBox(width: 16),
          const Icon(Icons.movie, color: Colors.white54, size: 16),
          const SizedBox(width: 4),
          const Text("Action", style: TextStyle(color: Colors.white54)),
        ],
      ),
    );
  }
}
