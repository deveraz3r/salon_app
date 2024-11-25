import 'package:flutter/material.dart';
import 'package:salon/resources/app_colors.dart';
import 'package:salon/view_model/services_details_viewmodel.dart';

class Overview extends StatelessWidget {
  Overview({super.key});

  final _detailsViewmodel = ServicesDetailsViewmodel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 160, // Constrain height for horizontal ListView
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: _detailsViewmodel.overview.length,
          separatorBuilder: (context, index){
            return SizedBox(width: 10);
          },
          itemBuilder: (context, index) {
            final overviewItem = _detailsViewmodel.overview[index];
            return Container(
              margin: const EdgeInsets.all(2), // Add spacing between items
              padding: const EdgeInsets.all(10),
              width: 130, // Set a fixed width for items
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Circular image container
                  Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        overviewItem.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Title text
                  Text(
                    overviewItem.title,
                    style: const TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
