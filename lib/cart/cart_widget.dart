import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/subtitle_text_widget.dart';
import '../widgets/title_text_widget.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // combination FittedBox and IntrinsicWidth, recomendation use IntrinsicWidth as little as possible
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: FancyShimmerImage(
                imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
                height: size.height * 0.2,
                width: size.height * 0.2,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IntrinsicWidth(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        child: TitlesTextWidget(
                          label: "Title" * 15,
                          maxLines: 2,
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.clear,
                              color: Colors.red,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyLight.heart,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SubtitleTextWidget(
                        label: "16.00\$",
                        color: Colors.blue,
                      ),
                      const Spacer(),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(IconlyLight.arrowDown2),
                        label: const Text("Qty: 6"),
                        style:
                            Theme.of(context).outlinedButtonTheme.style?.merge(
                                  OutlinedButton.styleFrom(
                                    side: const BorderSide(width: 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
