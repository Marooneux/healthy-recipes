import 'package:flutter/material.dart';
import '/themes/colors.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return AppBar(
      backgroundColor: AppColors.neutral100,
      automaticallyImplyLeading: false,
      titleSpacing: AppSpacing.spacing200,
      title: Image.asset('assets/images/icons/logo.png', height: 36),
      actions: [
        PopupMenuButton<String>(
          icon: const Icon(Icons.menu, color: AppColors.white),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.black),
          ),
          onSelected: (route) {
            Navigator.pushNamedAndRemoveUntil(context, route, (r) => false);
          },
          itemBuilder: (context) => [
            _buildItem('/home', Icons.home_outlined, 'Home', currentRoute),
            _buildItem('/about', Icons.info_outline, 'About', currentRoute),
            _buildItem('/recipes', Icons.restaurant_menu_outlined, 'Recipes', currentRoute),
          ],
        ),
        const SizedBox(width: AppSpacing.spacing100),
      ],
    );
  }

  PopupMenuItem<String> _buildItem(String route, IconData icon, String label, String? currentRoute) {
    final isActive = currentRoute == route;
    return PopupMenuItem(
      value: route,
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.spacing200,
          vertical: AppSpacing.spacing150,
        ),
        decoration: BoxDecoration(
          color: isActive ? AppColors.neutral200 : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, color: isActive ? AppColors.primary : AppColors.neutral600, size: 22),
            const SizedBox(width: AppSpacing.spacing150),
            Text(
              label,
              style: AppTypography.preset9.copyWith(
                color: isActive ? AppColors.primary : AppColors.neutral600,
                fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
