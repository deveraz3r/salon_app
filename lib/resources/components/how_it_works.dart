import 'package:flutter/material.dart';
import '../../view_model/services_details_viewmodel.dart';

class HowItWorks extends StatelessWidget {
  HowItWorks({super.key});

  final ServicesDetailsViewmodel _detailsViewmodel = ServicesDetailsViewmodel();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical:  8),
      child: Column(
        children: _detailsViewmodel.howItWorksSteps.map((index) {
          final step = index;

          return Padding(
            padding: const EdgeInsets.only(bottom:  10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical:  15),
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 1,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(step.title,
                      style: const TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(step.desc,
                      style: const TextStyle(
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      step.image,
                      height: 220,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
