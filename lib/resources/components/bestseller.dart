import 'package:flutter/material.dart';
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
            return SizedBox(
              height: 100,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/offers/Child.jpg"),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _servicesController.bestsellers[index].title,
                    style: const TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
