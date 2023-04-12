import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thought_box/src/appcolors/colors.dart';

class DataField extends StatelessWidget {
  final controller;
  final textInputAction;
  final textInputType;
  final String Title;
  final errorTitle;
  final double width;
  const DataField(
      {Key? key,
      this.textInputAction,
      this.textInputType,
      required this.Title,
      required this.width,
      this.controller,
      this.errorTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width,
        child: TextField(
            controller: controller,
            textInputAction: textInputAction,
            keyboardType: textInputType,
            cursorColor: AppTheme.colors.black,
            decoration: InputDecoration(
                errorText: errorTitle,
                errorStyle: TextStyle(color: AppTheme.colors.red),
                label: Text(
                  Title,
                  style:
                      TextStyle(fontSize: 18.sp, color: AppTheme.colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: AppTheme.colors.black, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: AppTheme.colors.black, width: 2)
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: AppTheme.colors.black)
                    ))),
      ),
    );
  }
}
