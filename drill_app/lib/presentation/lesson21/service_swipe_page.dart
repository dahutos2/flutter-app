import 'package:drill_app/presentation/lesson21/service.dart';
import 'package:flutter/material.dart';

import 'service_detail_pages.dart';
import 'service_list_page.dart';

class ServiceSwipePage extends StatelessWidget {
  const ServiceSwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///表示するサービス内容一覧。サービス型(クラス)を作成している。
    final List<Service> serviceList = [
      const Service(
        title: 'ドローン撮影',
        detail: '弊社ではドローンでの撮影を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo1.jpeg',
      ),
      const Service(
        title: '動画制作事業',
        detail: '弊社では動画制作事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo2.jpeg',
      ),
      const Service(
        title: 'WEBシステム開発',
        detail: '弊社ではWEBシステム開発事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo3.jpeg',
      ),
      const Service(
        title: 'モバイルアプリ開発',
        detail: '弊社ではモバイルアプリ開発事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo4.jpeg',
      ),
      const Service(
        title: 'IT研修',
        detail: '弊社ではIT研修を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo1.jpeg',
      ),
      const Service(
        title: 'スクール運営',
        detail: '弊社ではスクール運営を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo2.jpeg',
      ),
      const Service(
        title: 'その他',
        detail: '弊社ではその他多彩な事業を行なっています。予算等お気軽にご相談ください。',
        imagePath: 'images/demo3.jpeg',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題21'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'サービス内容',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (serviceList.length > 5)
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ServiceListPage(serviceList: serviceList),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Text(
                        'もっと見る',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          serviceList.isNotEmpty
              ? SizedBox(
                  height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      final service = serviceList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ServiceDetailPage(service: service),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SizedBox(
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 160,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(service.imagePath),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    service.title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 80,
                                  child: Text(
                                    service.detail,
                                    style: const TextStyle(fontSize: 12),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(
                    child: Text('表示させる情報がありません'),
                  ),
                )
        ],
      ),
    );
  }
}
