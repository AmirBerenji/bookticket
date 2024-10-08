

import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key, required this.icon, required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayput.getWidth(12),horizontal:AppLayput.getWidth(12) ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayput.getWidth(10),
        ),
        color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon,color: const Color(0xFFBFC2DF),),
          Gap(AppLayput.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}