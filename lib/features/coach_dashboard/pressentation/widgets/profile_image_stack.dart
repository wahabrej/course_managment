import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileImageStack extends StatelessWidget {
  final List<String> profileImages;
  final int additionalProfilesCount;

  const ProfileImageStack({super.key,
    required this.profileImages,
    required this.additionalProfilesCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: Stack(
        children: [
          ...profileImages.asMap().entries.map((entry) {
            int index = entry.key;
            String imageUrl = entry.value;

            return Positioned(
              left: index * 20.0,
              child: CircleAvatar(
                radius: 17,
                backgroundImage: imageUrl.startsWith('http')
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl),
              ),
            );
          }),
          Positioned(
            left: profileImages.length * 20.0,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Text(
                '$additionalProfilesCount+',
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF475467),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
