import 'package:flutter/material.dart';
import 'package:salon/resources/app_colors.dart';
import 'package:salon/resources/components/bestseller.dart';
import 'package:salon/resources/components/reusable_elevated_button.dart';
import 'package:salon/view_model/offers_viewmodel.dart';
import '../resources/components/services.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final OffersViewmodel _offersController = OffersViewmodel();

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
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 1
                    ),
                  ]
              ),
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.search),
            ),
            const SizedBox(width: 8,),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 1
                  ),
                ]
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
                                "4.5 ",
                                style: const TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                " (10k Bookings)",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Manrope',
                                    fontSize: 14),
                              )
                            ],
                        ),
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
                  itemCount: _offersController.offers.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: SizedBox(
                        width: 350,
                        child: Stack(children: [
                          Container(
                            color: AppColors.primaryColor,
                            //TODO: uncomment after getting offers image
                            // child: Image.asset(
                            //   "_offersController.offers[index].image",
                            //   width: double.infinity,
                            //   height: double.infinity,
                            //   fit: BoxFit.cover,
                            // ),
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
                                      "${_offersController.offers[index].discount}%",
                                      style: const TextStyle(
                                        fontFamily: 'Manrope',
                                        fontSize: 26,
                                        fontWeight: FontWeight.w900,
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
                                  "Save ${_offersController.offers[index].discount} % on your booking",
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
                tabs: [
                  Tab(
                    child: Text(
                      "Services",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Best-Seller",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Packages",
                      style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Services(),
                    Bestseller(),
                    const Center(child: Text('Packages Tab Content')),
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
