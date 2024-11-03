import 'package:first_app/core/themes/app_text_styles.dart';
import 'package:first_app/core/widgets/custom_button_secondary.dart';
import 'package:flutter/material.dart';
import '/core/widgets/custom_text_field.dart';
import '/core/widgets/custom_button_primary.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100), // Top spacing

            // Logo Section
            Center(
              child: Image.asset(
                'lib/assets/images/logo.png',
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(height: 24.0),

            // Welcome Text
            const Text(
              'Selamat datang',
              style: AppTextStyles.heading2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Silahkan masuk aplikasi',
              style: AppTextStyles.heading4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),

            // Username Field Label
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Username/Nomor Telepon',
                style: AppTextStyles.bodyText
              ),
            ),
            const SizedBox(height: 10.0),

            // Username Field
            const CustomTextField(
              hintText: 'Masukkan username atau nomor telepon',
            ),
            const SizedBox(height: 16.0),

            // Password Field Label
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kata sandi',
                style: AppTextStyles.bodyText
              ),
            ),
            const SizedBox(height: 10.0),

            // Password Field
            const CustomTextField(
              hintText: 'Masukkan kata sandi',

            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
      
      // Bottom Buttons
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButtonPrimary(
              text: 'Masuk',
              icon: Icons.login,
              onPressed: () {
                // Add login logic here
              },
            ),
            const SizedBox(height: 16.0),
            CustomButtonSecondary(
              text: 'Belum punya akun? Daftar',
              onPressed: () {
                // Add register navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
