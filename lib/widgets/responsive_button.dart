import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/mise/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width=120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true?Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppText(
                text: "Book Trip Now",
                color: Colors.white,
              ),
            ):Container(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset("img/angle_double_right.png",color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
