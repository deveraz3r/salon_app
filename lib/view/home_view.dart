import 'package:flutter/material.dart';
import 'package:salon/resources/components/bestseller.dart';
import 'package:salon/resources/components/home_header.dart';
import 'package:salon/resources/components/offers_banner.dart';
import '../resources/components/services.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});


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
              const HomeHeader(),
              const SizedBox(height: 10),

              // Offer banner
              OffersBanner(),
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
