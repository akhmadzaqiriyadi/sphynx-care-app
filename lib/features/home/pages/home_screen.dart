import 'package:flutter/material.dart';
import '/core/themes/app_colors.dart';
import '/core/themes/app_text_styles.dart';
import 'package:first_app/core/widgets/cat_info_card.dart';

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
            // Bagian kiri untuk teks
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
            // Bagian kanan untuk avatar
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                width: 48, // Ubah ukuran width avatar
                height: 48, // Ubah ukuran height avatar agar sesuai
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.backgroundDark200, // Ganti dengan warna border yang diinginkan
                    width: 2, // Ubah lebar border sesuai kebutuhan
                  ),
                  image: const DecorationImage(
                    image: AssetImage('lib/assets/images/avatar.png'), // Path to your avatar image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Anabulku',
                  style: AppTextStyles.bodyTexts,
                ),
                TextButton(
                  onPressed: () {
                    // Tambahkan aksi ketika tombol ditekan
                    // Misalnya, navigasi ke halaman baru
                  },
                  child: Text(
                    'Lihat semua',
                    style: AppTextStyles.bodyTexts.copyWith(
                      color: AppColors.primary400, // Ubah warna tombol sesuai kebutuhan
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            CatInfoCard(
              name: 'Ciko',
              age: '8 bulan',
              gender: 'Betina',
              breed: 'Anggora',
              imagePath: 'lib/assets/images/ciko.png',
            ),
            SizedBox(height: 10),
            CatInfoCard(
              name: 'Meongggg',
              age: '12 bulan',
              gender: 'Jantan',
              breed: 'Persia',
              imagePath: 'lib/assets/images/meong.png',
            ),
          ],
        ),
      ),
    );
  }
}
