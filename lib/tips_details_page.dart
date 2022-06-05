import 'package:flutter/material.dart';
import 'package:responsive_test/widgets/tips_card_view.dart';
import 'package:sizer/sizer.dart';

class TipsDetailsPage extends StatelessWidget {
  const TipsDetailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tips Details',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 24),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 12.h,
        backgroundColor: Colors.white,
        elevation: 0.8.h,
        bottomOpacity: 0.5,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 3.h),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: const TipsCardView(),
            );
          },
        ),
      ),
    );
  }
}