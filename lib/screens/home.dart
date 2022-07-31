import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery/inner_screens/feeds.dart';
import 'package:grocery/inner_screens/on_sale.dart';
import 'package:grocery/services/global_methods.dart';
import 'package:grocery/widgets/feed_items.dart';
import 'package:grocery/widgets/text_widget.dart';

import '../services/utils.dart';
import '../widgets/on_sale_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImages = [
    'assets/images/offers/Offer1.jpg',
    'assets/images/offers/Offer2.jpg',
    'assets/images/offers/Offer3.jpg',
    'assets/images/offers/Offer4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: utils.screenSize.height * 0.33,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    _offerImages[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: _offerImages.length,
                pagination:
                    const SwiperPagination(alignment: Alignment.bottomCenter),
                autoplay: true,
              ),
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            TextButton(
              onPressed: () {
                GlobalMethods.navigateTo(
                    ctx: context, routeName: OnSaleScreen.routeName);
              },
              child: Text(
                'View all',
                style: TextStyle(
                  color: utils.blueColor,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Row(
                    children: [
                      TextWidget(
                        text: 'ON SALE',
                        color: utils.orangeColor,
                        textSize: 22,
                        isTitle: true,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        IconlyLight.discount,
                        color: utils.orangeColor,
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: 177,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return const OnSaleWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                children: [
                  TextWidget(
                    text: 'Our products (per kg)',
                    color: utils.color,
                    textSize: 20,
                    isTitle: true,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      GlobalMethods.navigateTo(
                          ctx: context, routeName: FeedsScreen.routeName);
                    },
                    child: TextWidget(
                      text: 'Browse all',
                      color: utils.blueColor,
                      textSize: 20,
                      isTitle: true,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: EdgeInsets.zero,
              // crossAxisSpacing: 10,
              childAspectRatio:
                  utils.screenSize.width / (utils.screenSize.height * 0.54),
              children: List.generate(4, (index) {
                return const FeedsWidget();
              }),
            ),
            // const FeedsWidget()
          ],
        ),
      ),
    );
  }
}
