import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../consts/app_constants.dart';
import '../../screens/inner_screen/product_details.dart';
import '../subtitle_text_widget.dart';
import 'heart_btn.dart';

class LatestArrivalProductsWidget extends StatelessWidget {
  const LatestArrivalProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () async {
          await Navigator.pushNamed(context, ProductDetailsScreen.routName);
        },
        child: SizedBox(
          width: size.width * 0.45,
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: FancyShimmerImage(
                        imageUrl: AppConstants.imageUrl,
                        height: size.width * 0.28,
                        width: size.width * 0.28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Title" * 15,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              const HeartButtonWidget(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_shopping_cart,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Material(
                  elevation: 12,
                  borderRadius: BorderRadius.circular(12.0),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: SubtitleTextWidget(
                      label: "155000000.00\$",
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
