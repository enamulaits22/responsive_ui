import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TipsCardView extends StatelessWidget {
  const TipsCardView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: (Colors.grey[200])!,
            blurRadius: 5.h,
            offset: Offset(10.w, 2.h)
          ),
        ],
      ),
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: const Text(
                  'রাসূলুল্লাহ সা.-এর সকাল-সন্ধ্যার দুআ ও যিকর',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 0.8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 6.w, // Image radius
                      backgroundImage: const NetworkImage('https://yt3.ggpht.com/ytc/AKedOLSRfUL8amwBZB7qA5mMv9NtM-V7r-RJcKTxsciB=s900-c-k-c0x00ffffff-no-rj'),
                    ),
                    SizedBox(width: 4.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'by Sheikh Ahmadullah\'s Tips',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.7.h),
                          child: const Text(
                            'Category - Religion',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        const Text(
                          'Published on - October 27, 2021',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    padding:  EdgeInsets.only(right: 4.w, top: 2.h, bottom: 2.h),
                    // width: 160,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          const Icon(Icons.assignment),
                          SizedBox(width: 2.w),
                          const Text('Enroll Again'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 40.h,
                child: Image.network(
                  'https://1.bp.blogspot.com/-AVKNipWSXYI/XsUF4P8YJnI/AAAAAAAAAWE/cAWsVAb_jNkX1uJeH7-BfKcpjWMA2IGlwCLcBGAsYHQ/s1600/laylatul-qadr-bangla-article-image.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 1.h),
              Padding(
                padding: EdgeInsets.all(2.w),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.blue[700],
                      ),
                    ),
                    const Text('2.31k'),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.grey,
                      ),
                    ),
                    const Text('7.11k'),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Incomplete', style: TextStyle(fontSize: 10)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}