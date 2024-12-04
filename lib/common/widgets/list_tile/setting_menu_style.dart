import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingMenuStyleScreen extends StatelessWidget {
  const SettingMenuStyleScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    // Check if the current theme mode is dark or light
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColors.red,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: isDarkMode ? Colors.grey[500] : Colors.black, // Adjust color based on the theme
            ),
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
