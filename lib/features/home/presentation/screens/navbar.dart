import 'package:flutter/material.dart';
import 'package:flutter_product_portfolio/core/theme/app_colors.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  static const double _navbarHeight = 76;
  static const double _subHeight = 20;
  static const double _pageSpace = 46;

  @override
  Size get preferredSize => const Size.fromHeight(_navbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _navbarHeight,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: _pageSpace),
      child: Column(
        children: [
          Container(
            height: _subHeight,
            color: AppColors.primary,
          ),
          Spacer(),
          Row(
            children: [
              const Text(
                'Sopheak',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              ...navbarItem.map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    item,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const navbarItem = ['Home', 'About', 'Resume', 'Skills', 'Project', 'Contact'];
