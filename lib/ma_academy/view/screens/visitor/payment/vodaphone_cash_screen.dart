import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/constants_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/core/styles_manager.dart';
import 'package:ma_academy/core/utils/app_navigator.dart';
import 'package:ma_academy/ma_academy/view/screens/visitor/student/home/course_info_screen.dart';
import 'package:sizer/sizer.dart';

class VodaphoneCashScreen extends StatelessWidget {
  const VodaphoneCashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            AppNavigator.appNavigator(context, CourseInfoScreen(),
                isFinished: true);
          },
        ),
        centerTitle: true,
        title: Text(
          "Vodafone cash",
          style: getBoldStyle(color: ColorManager.whiteColor, fontSize: 20.sp),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.network(
              'https://www.ngmisr.com/wp-content/uploads/2021/01/%D8%AA%D8%AD%D9%88%D9%8A%D9%84-%D8%B1%D8%B5%D9%8A%D8%AF-%D9%81%D9%88%D8%AF%D8%A7%D9%81%D9%88%D9%86-%D9%83%D8%A7%D8%B4.png'),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Vodafone Number",
            style:
                getBoldStyle(color: ColorManager.blackColor, fontSize: 25.sp),
          )
        ],
      ),
    );
  }
}
