import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salon/model/service_model.dart';
import 'package:salon/resources/components/Overview.dart';
import 'package:salon/resources/components/after_care_tips.dart';
import 'package:salon/resources/components/faqs.dart';
import 'package:salon/resources/components/how_it_works.dart';

import '../resources/app_colors.dart';
import '../resources/components/reusable_elevated_button.dart';

class ServicesDetailsView extends StatelessWidget {
  ServicesDetailsView({super.key});

  final ServiceModel service = Get.arguments["service"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          service.title,
          style: const TextStyle(
            fontFamily: "Manrope",
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //service tile
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Service Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 110,
                    width: 110,
                    color: AppColors.primaryColor,
                    // Uncomment if you have image data
                    // child: Image.asset(
                    //   service.image,
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                ),
                const SizedBox(width: 12),

                // Service Details
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Service Title
                      Row(
                        children: [
                          Text(
                            service.title,
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Spacer(),
                          Text(
                            "\$ 100", // TODO: Replace with dynamic price
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),

                      //desc
                      Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.", // Replace with dynamic rating if available
                        style: const TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),


                      // Rating and Time
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            "4.5", // Replace with dynamic rating if available
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 1,
                            height: 14,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "45 mins", // Replace with dynamic time if available
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Divider(),
            ),

            //overview
            const Text(
              "Overview",
              style: const TextStyle(
                fontFamily: "Manrope",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Overview(),
            const SizedBox(height: 10),

            //how it works
            const Text(
              "How it works",
              style: const TextStyle(
                fontFamily: "Manrope",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            HowItWorks(),
            const SizedBox(height: 10),

            //after care tips
            const Text(
              "After care tips",
              style: const TextStyle(
                fontFamily: "Manrope",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            AfterCareTips(),
            const SizedBox(height: 10),

            //FAQs
            const Text(
              "FAQ",
              style: const TextStyle(
                fontFamily: "Manrope",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Faqs(),
            const SizedBox(height: 10),

            //Action Btn
            ReuseableElevatedbutton(buttonName: "Book Now")
          ],
        ),
      ),
    );
  }
}
