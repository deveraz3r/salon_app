import '../model/bestseller_model.dart';
import '../model/service_model.dart';

class BestsellerViewmodel {
  List<BestsellerModel> bestsellers = [
    BestsellerModel(
      id: "1",
      title: "Luxury Spa Package",
      time: const Duration(hours: 2),
      image: "assets/bestsellers/spa_package.png",
      rating: 4.8,
      price: 199.99,
      services: [
        ServiceModel(id: "1", title: "Massage", image: "assets/services/massage.png"),
        ServiceModel(id: "2", title: "Facial", image: "assets/services/facial.png"),
      ],
    ),
    BestsellerModel(
      id: "2",
      title: "Complete Beauty Makeover",
      time: const Duration(hours: 3),
      image: "assets/bestsellers/makeover.png",
      rating: 4.9,
      price: 249.99,
      services: [
        ServiceModel(id: "3", title: "Hair Color", image: "assets/services/hair_color.png"),
        ServiceModel(id: "4", title: "Makeup", image: "assets/services/makeup.png"),
        ServiceModel(id: "5", title: "Manicure", image: "assets/services/manicure.png"),
        ServiceModel(id: "6", title: "Pedicure", image: "assets/services/pedicure.png"),
      ],
    ),
    BestsellerModel(
      id: "3",
      title: "Express Glow Treatment",
      time: const Duration(minutes: 60),
      image: "assets/bestsellers/glow_treatment.png",
      rating: 4.7,
      price: 129.99,
      services: [
        ServiceModel(id: "7", title: "Lotion", image: "assets/services/lotion.png"),
        ServiceModel(id: "8", title: "Waxing", image: "assets/services/waxing.png"),
      ],
    ),
  ];
}