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

      body: BoxGroupName(),

      // body: Center(child: Text('محتوى الصفحة')),
    );
  }
}
