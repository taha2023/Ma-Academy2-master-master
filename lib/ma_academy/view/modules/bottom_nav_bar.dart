import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ma_academy/ma_academy/view/screens/visitor/student/calender/calender.dart';

import '../../../core/color_manager.dart';
import '../screens/visitor/student/courses/courses_screen.dart';
import '../screens/visitor/student/home/home_design_course.dart';
import '../screens/visitor/student/profile/profile.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = 'moduleScreen';

  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const DesignCourseHomeScreen(),
    CoursesScreen(),
    Calender(),
    const ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColorManager.primary,
        onTap: (value) {
          setState(
            () {
              currentIndex = value;
            },
          );
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_add,
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
