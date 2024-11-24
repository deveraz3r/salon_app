import 'package:flutter/material.dart';
import 'package:salon/resources/app_colors.dart';
import 'package:salon/resources/components/reusable_elevated_button.dart';

import '../resources/components/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final int off = 25;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                height: 26,
                child: Image.asset("assets/weather.png"),
              ),
              const Text(
                "32",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black.withOpacity(0.2),
                  width: 2,
                )
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.search),
            ),
            const SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 2,
                  )
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.share),
            ),
            const SizedBox(width: 25),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // Header section
              SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Circular avatar placeholder
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Image.asset("assets/salonLogo.png"),
                    ),
                    const SizedBox(width: 10),

                    // Name & rating
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        const Text(
                          "Lotus Salon",
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        // Rating stars (placeholder for now)
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for (int i = 0; i < 5; i++)
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                              Text(
                                "(10k Bookings)",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Manrope',
                                    fontSize: 14),
                              )
                            ]),
                        const SizedBox(width: 10),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Offer banner
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 400,
                        child: Stack(children: [
                          Container(
                            // child: Image.asset(
                            //   "assets/offers/Child.jpg", //TODO: replace with offer image
                            //   width: double.infinity,
                            //   fit: BoxFit.cover,
                            // ),
                            color: AppColors.primaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "$off %",
                                      style: const TextStyle(
                                        fontFamily: 'Manrope',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 2.0),
                                      child: Text(
                                        "Off",
                                        style: TextStyle(
                                          fontFamily: 'Manrope',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Save $off% on your booking",
                                  style: const TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                ReuseableElevatedbutton(
                                  onPressed: () {},
                                  width: 120,
                                  color: Colors.black,
                                  buttonName: ("Book Now"),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                ),
              ),
              const SizedBox(height: 10),

              // Tab-bar view
              const TabBar(
                indicator: null,
                tabs: [
                  Tab(
                    child: Text(
                      "Services",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Best-Seller",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Services",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Services(),
                    const Center(child: Text('Best-Selling Tab Content')),
                    const Center(child: Text('Tab Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
