import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_test/helper/screen_size.dart';
import 'package:responsive_test/widgets/tips_card_view_mobile.dart';

import 'widgets/tips_card_view_tab.dart';

class TipsDetailsPage extends StatelessWidget {
  const TipsDetailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);
    bool isDeviceMobile = screenSize == ScreenSize.mobile;
    var size = MediaQuery.of(context).size;
    log(screenSize.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isDeviceMobile ? 'Tips Mobile' : 'Tips Tab',
          style: const TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 24),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: isDeviceMobile ? 80 : 100,
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: isDeviceMobile ? 16 : size.width * 0.08),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: isDeviceMobile ? 16 : 40),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: isDeviceMobile ? 8 : 20),
              child: isDeviceMobile ? const TipsCardViewMobile() : const TipsCardViewTab(),
            );
          },
        ),
      ),
    );
  }
}