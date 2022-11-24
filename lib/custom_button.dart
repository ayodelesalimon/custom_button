library custom_button;

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function()? onTap;
  Widget? data;
  String? text;
  Color? color;
  double? textSize;
  Color? borderColor;
  Color? textColor;
  double? height;
  double? width;
  double? borderRadius;
  bool? enable;
  bool isLoading;
  CustomButton(
      {Key? key,
      this.onTap,
      this.data,
      @required this.text,
      this.color,
      this.borderColor = Colors.white,
      this.textColor = Colors.white,
      this.height,
      this.textSize,
      this.width = double.infinity,
      this.enable = true,
       this.isLoading = false,
      this.borderRadius = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enable!,
      child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color:  enable! ? color :  Colors.grey,
                borderRadius: BorderRadius.circular(borderRadius!),
                border: Border.all(
                    color: enable! ? borderColor! : const Color(0xFFD9D9D9))),
            width: width,
            height: height ?? 53,
            child:  Center(
                        child: data ??
                            Text(
                             text!,
                              style: TextStyle(
                                  color:  textColor,
                                  fontSize: textSize ?? 13.5,
                                  fontWeight: FontWeight.w500),
                            )),
                
            
          )),
    );
  }
}