import 'package:flutter/material.dart';
import 'package:movista_app/features/details/presentation/views/widgets/cover_details.dart';
import 'package:movista_app/features/details/presentation/views/widgets/extre_details.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.bookmark), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoverDetailsWidget(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                // overflow: TextOverflow.visible,
                "Spiderman No Way Home",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Extra Info (Year, Duration, Genre)
            ExtraDetails(),

            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Overview',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Peter Parker’s life and reputation are turned upside down when Mysterio reveals his identity. With the help of Doctor Strange, Peter must face challenges that threaten the multiverse.",
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}


