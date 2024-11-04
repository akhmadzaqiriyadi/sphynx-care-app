import 'package:flutter/material.dart';
import '/core/themes/app_colors.dart';
import '/core/themes/app_text_styles.dart';
import 'package:first_app/core/widgets/cat_info_card.dart';
import 'package:first_app/core/widgets/booking_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat datang',
                  style: AppTextStyles.heading5,
                ),
                Text(
                  'Hasbi duta anabul',
                  style: AppTextStyles.heading2s,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.backgroundDark200,
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('lib/assets/images/avatar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Banner Image
            Container(
              width: 343,
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'lib/assets/images/baner.png',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Anabulku',
                  style: AppTextStyles.bodyTexts,
                ),
                SizedBox(width: 150), // Adjust this value to control the spacing
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lihat semua',
                    style: AppTextStyles.bodyTexts.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            // CatInfoCard with width 343 and consistent styling
            Container(
              width: 343,
              margin: const EdgeInsets.only(bottom: 10),
              child: CatInfoCard(
                name: 'Ciko',
                age: '8 bulan',
                gender: 'Betina',
                breed: 'Anggora',
                imagePath: 'lib/assets/images/ciko.png',
              ),
            ),
            Container(
              width: 343,
              margin: const EdgeInsets.only(bottom: 16), // Add space after the last card
              child: CatInfoCard(
                name: 'Meongggg',
                age: '12 bulan',
                gender: 'Jantan',
                breed: 'Persia',
                imagePath: 'lib/assets/images/meong.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Aligns items to the start
              children: [
                Text(
                  'Pesanan saya',
                  style: AppTextStyles.bodyTexts,
                ),
                SizedBox(width: 120), // Adjust this value to control the spacing
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lihat semua',
                    style: AppTextStyles.bodyTexts.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 343, // Make the BookingCard the same width
              child: BookingCard(
                startDate: "3 Mei",
                endDate: "8 Mei",
                duration: "5 hari 4 malam",
                numPets: "2",
                roomType: "VIP Room",
                bookingCode: "#9Q23IJD9S00Q12D",
              ),
            ),
          ],
        ),
      ),
    );
  }
}