import 'package:flutter/material.dart';
import 'package:salon/view_model/services_viewmodel.dart';

class Services extends StatelessWidget {
  Services({super.key});

  //services Controller
  final ServicesViewModel _servicesController = ServicesViewModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:  12),
      child: GridView.builder(
          itemCount: _servicesController.services.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
          ),
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
                    child: Image.asset(_servicesController.services[index].image),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _servicesController.services[index].title,
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
