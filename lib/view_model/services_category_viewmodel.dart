import 'package:salon/model/service_category_model.dart';
import 'package:salon/view_model/services/services_viewmodel.dart';

class ServicesCategoryViewmodel {
  List<ServiceCategoryModel> serviceCategories = [
    ServiceCategoryModel(
      id: "1",
      category: "Hair Care",
      services: [
        ServicesViewModel().services.firstWhere((service) => service.id == "3"), // Hair Color
        ServicesViewModel().services.firstWhere((service) => service.id == "4"), // Hair Cuts
      ],
    ),
    ServiceCategoryModel(
      id: "2",
      category: "Skin Care",
      services: [
        ServicesViewModel().services.firstWhere((service) => service.id == "2"), // Facial
        ServicesViewModel().services.firstWhere((service) => service.id == "5"), // Lotion
        ServicesViewModel().services.firstWhere((service) => service.id == "10"), // Waxing
      ],
    ),
    ServiceCategoryModel(
      id: "3",
      category: "Makeup & Styling",
      services: [
        ServicesViewModel().services.firstWhere((service) => service.id == "1"), // Eye Liner
        ServicesViewModel().services.firstWhere((service) => service.id == "6"), // Makeup
      ],
    ),
    ServiceCategoryModel(
      id: "4",
      category: "Hand & Foot Care",
      services: [
        ServicesViewModel().services.firstWhere((service) => service.id == "7"), // Manicure
        ServicesViewModel().services.firstWhere((service) => service.id == "9"), // Pedicure
      ],
    ),
    ServiceCategoryModel(
      id: "5",
      category: "Relaxation",
      services: [
        ServicesViewModel().services.firstWhere((service) => service.id == "8"), // Massage
      ],
    ),
  ];
}