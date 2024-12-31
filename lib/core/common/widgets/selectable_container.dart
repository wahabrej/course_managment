import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SelectableContainer extends StatelessWidget {
  final String label;
  final IconData selectedIcon;
  final IconData unselectedIcon;
  final VoidCallback onTap;
  final bool isSelected;

  const SelectableContainer({
    super.key,
    required this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Calls the passed onTap function
      child: Container(

        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.grey.shade200,

          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.textSecondary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label, // Dynamic label
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.black : Colors.grey.shade600,
              ),
            ),
            Icon(
              isSelected ? selectedIcon : unselectedIcon, // Dynamic icon
              color: isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
