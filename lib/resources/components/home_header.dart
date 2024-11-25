import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
