import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text-style.dart';

class CustomBtn extends StatelessWidget {

  final String title;
  final void Function() onTap;



  const CustomBtn({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap:  onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 180.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(title, style: headline4(context),),
      ),
    );

  }
}
