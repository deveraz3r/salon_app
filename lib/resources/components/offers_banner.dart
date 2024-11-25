import 'package:flutter/material.dart';
import 'package:salon/resources/components/reusable_elevated_button.dart';

import '../../view_model/services/offers_viewmodel.dart';
import '../app_colors.dart';

class OffersBanner extends StatelessWidget {
  OffersBanner({super.key});

  final OffersViewmodel _offersController = OffersViewmodel();


  @override
  Widget build(BuildContext context) {
    return Container(
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
                        buttonName: ("Book now"),
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
    );
  }
}
