import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thought_box/src/appcolors/colors.dart';

class Button extends StatelessWidget {
  final Function()? onTap;
  const Button({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
        height: 30.h,
        width: 140.w,
        decoration: BoxDecoration(
            color: AppTheme.colors.black,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            '# Make Grid',
            style: TextStyle(color: AppTheme.colors.white, fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
