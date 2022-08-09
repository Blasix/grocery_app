import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery/services/utils.dart';
import 'package:grocery/widgets/price_widget.dart';
import 'package:grocery/widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../inner_screens/product_details.dart';
import '../models/products_model.dart';
import '../services/global_methods.dart';
import 'heart_btn.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({Key? key}) : super(key: key);

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    final productModel = Provider.of<ProductModel>(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        color: utils.getTheme
            ? Theme.of(context).cardColor.withOpacity(0.9)
            : Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            GlobalMethods.navigateTo(
                ctx: context, routeName: ProductDetails.routeName);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyShimmerImage(
                      imageUrl: productModel.imageUrl,
                      height: 90,
                      width: 90,
                      boxFit: BoxFit.fill,
                    ),
                    Column(
                      children: [
                        TextWidget(
                          text: '1${productModel.isPiece ? 'P' : 'KG'}',
                          color: utils.color,
                          textSize: 22,
                          isTitle: true,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                IconlyLight.bag2,
                                size: 22,
                                color: utils.color,
                              ),
                            ),
                            const HearthBTN()
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                PriceWidget(
                    isOnSale: productModel.isOnSale,
                    price: productModel.price,
                    salePrice: productModel.salePrice,
                    textPrice: '1'),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: productModel.title,
                  color: utils.color,
                  textSize: 16,
                  isTitle: true,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
