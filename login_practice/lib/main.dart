import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://undiknas.ac.id/wp-content/uploads/2023/04/UNDIKNAS-COLOR-768x768.png',
                height: 100,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                hintText: 'E-mail',
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                hintText: 'Password',
                icon: Icons.vpn_key,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              _buildButton(
                text: 'Login',
                onPressed: () {
                  // Handle login action
                },
              ),
              const SizedBox(height: 16),
              _buildTextButton('Ciee Mahasiswa baru ya? Klik sini', () {
                // Handle "New students" action
              }),
              _buildTextButton('Aduh lupa sandi?', () {
                // Handle "Forgot password" action
              }),
              const SizedBox(height: 20),
              _buildLanguageSwitch(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String hintText,
      required IconData icon,
      bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: GoogleFonts.poppins(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF2C2C2C),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(color: Colors.white54),
        prefixIcon: Icon(icon, color: Colors.orange),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1E3A8A), // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildTextButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(color: Colors.white54),
      ),
    );
  }

  Widget _buildLanguageSwitch() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.flag, color: Colors.orange),
        SizedBox(width: 8),
        Icon(Icons.flag, color: Colors.red),
      ],
    );
  }
}
