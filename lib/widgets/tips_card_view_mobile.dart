import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TipsCardViewMobile extends StatelessWidget {
  const TipsCardViewMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: (Colors.grey[200])!,
            blurRadius: 25,
            offset: const Offset(5, 20)
          ),
        ],
      ),
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'রাসূলুল্লাহ সা.-এর সকাল-সন্ধ্যার দুআ ও যিকর',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30, // Image radius
                      backgroundImage: NetworkImage('https://yt3.ggpht.com/ytc/AKedOLSRfUL8amwBZB7qA5mMv9NtM-V7r-RJcKTxsciB=s900-c-k-c0x00ffffff-no-rj'),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         Text(
                          'by Sheikh Ahmadullah\'s Tips',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Category - Religion',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Text(
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
                    padding:  const EdgeInsets.only(right: 16, top: 8, bottom: 16),
                    // width: 160,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.assignment),
                          SizedBox(width: 6),
                          Text('Enroll Again'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: Colors.blue),
                    ),
                  ),
                ],
              ),
              CachedNetworkImage(
                imageUrl: 'https://1.bp.blogspot.com/-AVKNipWSXYI/XsUF4P8YJnI/AAAAAAAAAWE/cAWsVAb_jNkX1uJeH7-BfKcpjWMA2IGlwCLcBGAsYHQ/s1600/laylatul-qadr-bangla-article-image.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: 200,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8),
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
                      child: const Text('Incomplete'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
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