import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:course_online/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../payment/presentation/widgets/Success_Bar_Widget.dart';
import '../WidgetScreen/bottomcontainer.dart';

class PreferredSession extends StatelessWidget {
  const PreferredSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 6.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                          color: AppColors.success,
                          borderRadius: BorderRadius.all(Radius.circular(3.r))),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      'Open for booking',
                      style: getTextStyle(
                        fontWeight: FontWeight.w300,
                        lineHeight: 18,
                        fontSize: 12,
                        color: AppColors.success,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "10 am - 12 pm",
                  style: getTextStyle(
                    fontSize: 12,
                    lineHeight: 18,
                    color: const Color(0xFF667085),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Conversation Boost',
                          style: getTextStyle(
                              fontWeight: FontWeight.bold,
                              lineHeight: 24,
                              color: const Color(0xff1D2939)),
                        ),

                        SizedBox(height: 8.h),

                        Text(
                          'Writing expert',
                          style: getTextStyle(
                            fontSize: 12.sp,
                            color: Colors.black54,
                          ),
                        ),

                        // Entry level
                      ],
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width:114.w ,
                  child: ElevatedButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const SuccessDialog();
                        },
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r), // 8px border radius
                      ),
                      padding: EdgeInsets.zero, // Remove default padding
                    ),
                    child: Center(
                      child: Text(
                        'Book now', // Button text
                        style: getTextStyle(
                         fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const UserInfoContainer(
                    name: 'Adam Williams', designation: 'Professor')
              ],
            )
          ],
        ),
      ),
    );
  }
}
