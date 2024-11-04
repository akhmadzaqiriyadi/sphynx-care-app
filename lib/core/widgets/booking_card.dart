import 'package:first_app/core/themes/app_colors.dart';
import 'package:first_app/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final String startDate;
  final String endDate;
  final String duration;
  final String numPets;
  final String roomType;
  final String bookingCode;

  const BookingCard({
    Key? key,
    required this.startDate,
    required this.endDate,
    required this.duration,
    required this.numPets,
    required this.roomType,
    required this.bookingCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(
          color: AppColors.backgroundDark400,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  startDate,
                  style: AppTextStyles.bodyText.copyWith(
                        color: AppColors.primary,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 4, // Ukuran radius lingkaran
                      backgroundColor: Colors.grey.shade400,
                    ),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      duration,
                      style: AppTextStyles.heading6,
                    ),
                    const SizedBox(width: 2),
                    Container(
                      width: 50,
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.grey.shade400,
                    ),
                  ],
                ),
                Text(
                  endDate,
                  style: AppTextStyles.bodyText.copyWith(
                  color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.pets, color: AppColors.backgroundDark, size: 24),
                    const SizedBox(height: 4),
                    Text(
                      '$numPets anabul',
                      style: AppTextStyles.bookcard,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.door_front_door, color: AppColors.backgroundDark, size: 24),
                    const SizedBox(height: 4),
                    Text(
                      roomType,
                      style: AppTextStyles.bookcard,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bookingCode,
                  style: AppTextStyles.heading6,
                ),
                SizedBox(
                  width: 72,
                  height: 26,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle check-in action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Check in',
                      style: AppTextStyles.bookcard.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
