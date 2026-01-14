import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gts/generated/fonts/app_fonts.dart';

class CustomTextField extends StatefulWidget {
  Function()? onTap;
  String? hintText;
  Icon? icon;
  bool? isIcon;
  bool? isDirections;

  CustomTextField({required this.onTap, required this.hintText, super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isIcon = false;
  bool isDirections = false;



  @override
  void initState() {
    isIcon = widget.isIcon ?? false;
    isDirections = widget.isDirections ?? false;
    super.initState();
  }


  Widget child (){
    return Text('TASH',style:AppFonts.mulish.s15w600());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 52.h,
        width: 304.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: BoxBorder.all(width: 1.w, color: Colors.grey),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  onTap: widget.onTap,
                  decoration: InputDecoration(hintText: widget.hintText),
                ),
              ),
              SizedBox(width: 30.w,),
              isIcon == true ? Expanded  (
                flex: 1,
                child: child(),
              ): Container(),
               isDirections == true ? Expanded(flex: 1, child: widget.icon!) : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
