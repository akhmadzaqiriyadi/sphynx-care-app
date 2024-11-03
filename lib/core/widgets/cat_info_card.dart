import 'package:flutter/material.dart';
import 'package:first_app/core/themes/app_text_styles.dart';
import 'package:first_app/core/themes/app_colors.dart';

class CatInfoCard extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String breed;
  final String imagePath;

  const CatInfoCard({
    Key? key,
    required this.name,
    required this.age,
    required this.gender,
    required this.breed,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: AppColors.backgroundDark400, 
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTextStyles.card,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, color: AppColors.backgroundDark400, size: 16.0),
                        const SizedBox(width: 4),
                        Text(age, style: AppTextStyles.childcard),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        const Icon(Icons.female, color: AppColors.backgroundDark400, size: 16.0),
                        const SizedBox(width: 4),
                        Text(gender, style: AppTextStyles.childcard),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        const Icon(Icons.pets, color: AppColors.backgroundDark400, size: 16.0),
                        const SizedBox(width: 4),
                        Text(breed, style: AppTextStyles.childcard),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          // Image section
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 64,
              height: 48,
            ),
          ),
        ],
      ),
    );
  }
}
