import 'package:flutter/material.dart';
import 'package:proj/models/game.dart';
import 'package:proj/pages/detail/widgets/gallery.dart';
import 'package:proj/pages/detail/widgets/header.dart';
import 'package:proj/pages/detail/widgets/description.dart';
import 'package:proj/pages/detail/widgets/review.dart';

class DetailPage extends StatelessWidget {
  final Game game;

  const DetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(game.name),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    game.bgImage,
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black54, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Header section
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: HeaderSection(),
                ),

                 GallerySection(game: game), 
               

                const SizedBox(height: 20),

                // Description section
                DescriptionSection(game: game),

                const SizedBox(height: 20),

                // Review section
                ReviewSection(game: game),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




