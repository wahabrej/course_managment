import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionListView extends StatelessWidget {
  final List<Map<String, String>> sessions;

  const SessionListView({
    super.key,
    required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          final session = sessions[index];
          final isEnabled = session['enabled'] == 'true';
          final opacity = (index >= 2) ? 0.3 : 1.0;

          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Opacity(
              opacity: opacity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  RichText(
                    text: TextSpan(
                      style: getTextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color:
                            isEnabled ? const Color(0xFF475467) : const Color(0xFFD0D5DD),
                      ),
                      children: [
                        TextSpan(
                          text: '${session['session']}: ',
                          style: getTextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            lineHeight: 11.86,
                            color: const Color(0xff475467),
                          ),
                        ),
                        TextSpan(
                          text: session['title'],
                          style: getTextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp,
                            lineHeight: 11.86,
                            color: const Color(0xff475467)
                                .withOpacity(isEnabled ? 1 : 0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    session['week']!,
                    style: getTextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp,
                      lineHeight: 11.86,
                      color: isEnabled ? const Color(0xFF475467) : const Color(0xFFD0D5DD),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
