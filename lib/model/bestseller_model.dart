import 'package:salon/model/service_model.dart';

class BestsellerModel {
  final String id;
  final String title;
  final Duration time;
  final String image;
  final double rating;
  final double price;
  final List<ServiceModel> services;

  BestsellerModel({
    required this.id,
    required this.title,
    required this.time,
    required this.image,
    required this.rating,
    required this.price,
    required this.services,
  });
}
