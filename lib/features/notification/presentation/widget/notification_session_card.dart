import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:course_online/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class SessionCard extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final Callback onTapZoom;
  final Callback onTapDel;

  const SessionCard(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.onTapZoom,
      required this.onTapDel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {},
        child: Card(
          color: AppColors.white,
          child: ListTile(
            leading: Image.asset(
              image,
              height: 48.h,
              width: 48.w,
            ),
            title: Text(
              title,
              style: getTextStyle(
                  fontSize: 14, fontWeight: FontWeight.w300, lineHeight: 22.96),
            ),
            subtitle: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      time,
                      style: getTextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          lineHeight: 19.68,
                          color: AppColors.primary),
                    )),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onTapZoom,
                      child: Container(
                        height: 40.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: const AssetImage(
                                ImagePath.zoom,
                              ),
                              height: 20.h,
                              width: 20.w,
                            ),
                            const Text(
                              'Join now',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onTapDel,
                      child: SizedBox(
                        height: 40.h,
                        width: 110.w,
                        child: const Center(child: Text('Delete')),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
