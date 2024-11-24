import 'package:flutter/material.dart';
import 'package:salon/resources/app_colors.dart';
import 'package:salon/resources/components/reusable_elevated_button.dart';
import 'package:salon/view_model/bestseller_viewmodel.dart';

class Bestseller extends StatelessWidget {
  Bestseller({super.key});

  //services Controller
  final BestsellerViewmodel _servicesController = BestsellerViewmodel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  12),
      child: ListView.separated(
          itemCount: _servicesController.bestsellers.length,
          separatorBuilder: (context, index){
            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 1,
                  )
                ]
              ),
              padding: const EdgeInsets.symmetric(vertical:  12, horizontal: 10),
              // height: 395,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                      ),
                      // child: Image.asset(_servicesController.bestsellers[index].image, fit: BoxFit.fitWidth,),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //name and rating row
                        Row(
                          children: [
                            Text(
                              _servicesController.bestsellers[index].title,
                              style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                ],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              _servicesController.bestsellers[index].rating.toString(),
                              style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),

                        //desc row
                        Column(
                          children: _servicesController.bestsellers[index].services.take(3).map((service){
                            return Row(
                              children: [
                                Text(
                                  "${service.title}:",
                                  style: const TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "  ${service.title}",
                                  style: const TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            );
                          }).toList(),
                        ),

                        //price row
                        Row(
                          children: [
                            Text(
                              "\$ ${_servicesController.bestsellers[index].price} ",
                              style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(width: 1, height: 20, color: Colors.grey,), //TODO: change it to VerticalDivider()
                            const Text(
                              "  45 mins",
                              style: const TextStyle(
                                fontFamily: "Manrope",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 35,
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
                              child: Image.asset("assets/services/liner.png"),
                            ),
                            const SizedBox(width: 10),
                            ReuseableElevatedbutton(
                              onPressed: () {},
                              width: 120,
                              buttonName: ("Book Now"),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
