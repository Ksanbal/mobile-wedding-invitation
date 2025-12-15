import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/pages/two_dimensional_home.dart';
import 'package:mobile_wedding_invitation/pages/vertical_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  Widget _buildButton({
    required IconData icon,
    required VoidCallback onPressed,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? Colors.white.withValues(alpha: 0.5) : Colors.transparent,
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          [TwoDimensionalHomeScreen(), VerticalHomeScreen()][_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(
                    icon: Icons.apps_rounded,
                    onPressed: () {
                      if (_currentIndex == 0) return;

                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    isSelected: _currentIndex == 0,
                  ),
                  _buildButton(
                    icon: Icons.menu_rounded,
                    onPressed: () {
                      if (_currentIndex == 1) return;

                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    isSelected: _currentIndex == 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
