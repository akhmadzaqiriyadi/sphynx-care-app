import 'package:flutter/material.dart';
import '/core/widgets/custom_button_primary.dart';
import '/core/widgets/custom_text_field_secondary.dart';
import 'package:first_app/core/themes/app_text_styles.dart';
import 'package:first_app/core/widgets/custom_button_secondary.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Daftar', style: AppTextStyles.heading2),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            // Name
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nama lengkap',
                style: AppTextStyles.bodyText,
              ),
            ),
            SizedBox(height: 15.0),

            // Name Field
            CustomTextFieldSecondary(
              hintText: 'Masukkan nama lengkap',
            ),
            SizedBox(height: 16.0),

            // Username
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Username',
                style: AppTextStyles.bodyText,
              ),
            ),
            SizedBox(height: 10.0),

            // Username Field
            CustomTextFieldSecondary(
              hintText: 'Masukkan username atau nomor telepon',
            ),
            SizedBox(height: 16.0),

            // Kata sandi
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kata sandi',
                style: AppTextStyles.bodyText,
              ),
            ),
            SizedBox(height: 10.0),

            // Kata sandi Field
            CustomTextFieldSecondary(
              hintText: 'Masukkan kata sandi',
            ),
            SizedBox(height: 16.0),

            // Konfirmasi kata sandi
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Konfirmasi kata sandi',
                style: AppTextStyles.bodyText,
              ),
            ),
            SizedBox(height: 10.0),

            // Konfirmasi Kata Sandi Field
            CustomTextFieldSecondary(
              hintText: 'Masukkan kata sandi lagi',
            ),
            
            SizedBox(height: 16.0),

            // Nomor telepon
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nomor telepon',
                style: AppTextStyles.bodyText,
              ),
            ),
            SizedBox(height: 10.0),

            // Nomor telepon Field
            CustomTextFieldSecondary(
              hintText: 'Masukkan nomor telepon',
            ),
            SizedBox(height: 16.0),

            // Alamat (opsional)
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Alamat (opsional)',
                style: AppTextStyles.bodyText,
              ),
            ),
            SizedBox(height: 10.0),

            // Alamat Field
            CustomTextFieldSecondary(
              hintText: 'Masukkan alamat',
            ),
          ],
        ),
      ),
      
      // Bottom Buttons
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButtonPrimary(
              text: 'Daftar',
              icon: Icons.login,
              onPressed: () {
                // Add registration logic here
              },
            ),
            const SizedBox(height: 16.0),
            CustomButtonSecondary(
              text: 'Sudah punya akun? Masuk',
              onPressed: () {
                // Add navigation to login logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
