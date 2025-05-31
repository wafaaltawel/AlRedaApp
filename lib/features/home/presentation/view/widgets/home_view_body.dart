import 'package:alreda_app1/features/home/presentation/view/widgets/box_group_name.dart';
import 'package:alreda_app1/features/home/presentation/view/widgets/drawer_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerBody(),

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // ضع هنا منطق الإشعارات
          },
        ),
        title: const SizedBox(), // إزالة العنوان من المنتصف

        actions: [
          // النص "data"
          const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                'دورة جامع الرضا',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // زر القائمة المنسدلة
          Builder(
            builder:
                (context) => IconButton(
                  icon: const Icon(Icons.menu), // ثلاث خطوط
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer(); // فتح القائمة
                  },
                ),
          ),
        ],
      ),

      body: Column(
        children: [BoxGroupName(), SizedBox(height: 50), StudentName()],
      ),
    );
  }
}

class StudentName extends StatelessWidget {
  const StudentName({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات الطلاب (قائمة يمكن التوسيع عليها)
    final List<Map<String, String>> students = [
      {'name': 'محمد الزعبي', 'grade': 'الصف العاشر'},
      {'name': 'احمد زيتون', 'grade': 'الصف التاسع'},
      {'name': 'وفا الطويل', 'grade': 'الصف الحادي عشر'},
    ];

    return Column(
      children:
          students.map((student) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                textDirection: TextDirection.rtl, // لبدء من اليمين
                children: [
                  // صورة أو أيقونة
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                      'lib/features/home/images/WIN_20250423_13_35_50_Pro.jpg',
                    ), // تأكد من وجود الصورة
                  ),
                  const SizedBox(width: 12),

                  // اسم الطالب
                  Expanded(
                    child: Text(
                      student['name']!,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // الصف في حافة مميزة
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      student['grade']!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
