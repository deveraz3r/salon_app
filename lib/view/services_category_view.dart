import 'package:flutter/material.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salon/resources/app_colors.dart';
import 'package:salon/utils/app_urls.dart';
import 'package:salon/view_model/services_category_viewmodel.dart';
import '../resources/components/reusable_elevated_button.dart';

class ServicesCategoryView extends StatelessWidget {
  ServicesCategoryView({super.key});

  final ServicesCategoryViewmodel _servicesCategoryViewmodel =
      ServicesCategoryViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Custom AppBar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),

                  // Search Button
                  GestureDetector(
                    onTap: () {
                      // Handle search action
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.search, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

            //main content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: ListView.separated(
                  itemCount:
                      _servicesCategoryViewmodel.serviceCategories.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final category =
                        _servicesCategoryViewmodel.serviceCategories[index];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Category Title
                        Text(
                          category.category,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),

                        // Render Services Dynamically
                        Column(
                          children: List.generate(
                            category.services.length,
                            (index2) {
                              final service = category.services[index2];
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 3,
                                      // offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      // Service Image
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: 120,
                                          width: 120,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Service Title
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
                                            const SizedBox(height: 6),

                                            // Rating and Time
                                            Row(
                                              children: [
                                                const Icon(Icons.star,
                                                    color: Colors.amber,
                                                    size: 18),
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
                                            const SizedBox(height: 8),

                                            // Price and Action Button
                                            Row(
                                              children: [
                                                Text(
                                                  "\$ 100", // TODO: Replace with dynamic price
                                                  style: const TextStyle(
                                                    fontFamily: "Manrope",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const Spacer(),
                                                ReuseableElevatedbutton(
                                                  onPressed: () {
                                                    Get.toNamed(
                                                      RouteName.servicesDetails,
                                                      arguments: {
                                                        "service": service
                                                      },
                                                    );
                                                  },
                                                  width: 80,
                                                  buttonName: "Book",
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
