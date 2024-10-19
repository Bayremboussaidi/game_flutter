import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome,",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "What would you like to play?",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 25, // Ajout d'un rayon pour l'avatar
            backgroundColor: Colors.transparent, // Suppression du background
            child: ClipOval( // Clip pour s'assurer que l'image est ronde
              child: Image.asset(
                'assets/images/avatar.png',
                fit: BoxFit.cover,
                width: 50, // Taille définie pour l'avatar
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
