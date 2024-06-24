import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const NavBarItem({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Transform.scale(
          scale: _isHovered ? 1.1 : 1.0,
          child: Row(
            mainAxisSize: MainAxisSize
                .min, // Ensure the Row occupies minimum space necessary
            children: [
              Image.asset(
                'assets/icons/file.png',
                height: 20, // Adjust height as needed
                width: 20, // Adjust width as needed
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                fit: FlexFit.loose, // Allow text to wrap if necessary
                child: Text(
                  widget.title,
                  style: GoogleFonts.anton(
                    color: _isHovered
                        ? Color.fromARGB(255, 242, 186, 19)
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
