// import 'package:flutter/material.dart';
// import 'package:gts/core/theme/app_colors.dart';
// import 'package:gts/generated/fonts/app_fonts.dart';
//
//
//
// class StepperCounter extends StatefulWidget {
//   const StepperCounter({super.key});
//
//   @override
//   State<StepperCounter> createState() => _StepperCounterState();
// }
//
// class _StepperCounterState extends State<StepperCounter> {
//    int _counter = 0;
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Row(
//       children: [
//         minusIconButton(_counter),
//         SizedBox(width: 15),
//         clickCounterWidget(_counter),
//         SizedBox(width: 15),
//         plusIconButton()
//
//       ],
//     );
//   }
// }
//
// Widget minusIconButton (int counter,){
//   return InkWell(
//     onTap: () {},
//     child: Container(
//       height: 32,
//       width: 32,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(100),
//         color:  counter < 0 ? AppColors.fonts.greyLight :AppColors.brandColors.blueLight,
//       ),
//       child: Center(
//         child: Icon(Icons.remove, size: 20,color: counter < 0 ? AppColors.fonts.greyLight : AppColors.brandColors.blueAccent,),
//       ) ,
//     ),
//   );
// }
//
// Widget clickCounterWidget ( int counter,) {
//   return Text(counter.toString(), style: AppFonts.mulish.s16w500(color: AppColors.fonts.black500),);
// }
// Widget plusIconButton (){
//   return InkWell(
//     onTap: () {},
//     child: Container(
//       height: 32,
//       width: 32,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(100),
//         color: AppColors.brandColors.blueLight,
//       ),
//       child: Center(
//         child: Icon(Icons.add, size: 20,color: AppColors.brandColors.blueAccent,),
//       ) ,
//     ),
//   );
// }