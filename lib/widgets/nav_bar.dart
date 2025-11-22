import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _hoveredIndex = -1;
  bool _contactHover = false;

  final List<String> menuItems = [
    "Home",
    "Services",
    "About Me",
    "Projects",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 25),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// ---- Brand / Name ----
              const Text(
                'Shaban Shaikh',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  letterSpacing: 1.2,
                  color: Colors.white,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  /// Navigation Items
                  for (int i = 0; i < menuItems.length; i++)
                    _buildNavItem(menuItems[i], i),

                  const SizedBox(width: 20),

                  /// ------------------------------
                  /// CONTACT BUTTON WITH HOVER ANIMATION
                  /// ------------------------------
                  MouseRegion(
                    onEnter: (_) => setState(() => _contactHover = true),
                    onExit: (_) => setState(() => _contactHover = false),
                    cursor: SystemMouseCursors.click,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeOut,
                      transform: Matrix4.identity()
                        ..scale(_contactHover ? 1.07 : 1.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _contactHover
                              ? Colors.blue.shade700
                              : Colors.blueAccent,
                          shadowColor: Colors.blueAccent,
                          elevation: _contactHover ? 12 : 4,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          'Contact Me',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  /// ------------------------------
  /// NAV ITEM WITH HOVER ANIMATION
  /// ------------------------------
  Widget _buildNavItem(String title, int index) {
    final bool isHovered = index == _hoveredIndex;

    return MouseRegion(
      onEnter: (_) => setState(() => _hoveredIndex = index),
      onExit: (_) => setState(() => _hoveredIndex = -1),
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isHovered ? Colors.blueAccent : Colors.white,
              ),
              child: Text(title),
            ),

            const SizedBox(height: 4),

            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              height: 2,
              width: isHovered ? 30 : 0,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
