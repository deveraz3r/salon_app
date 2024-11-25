import 'package:salon/model/service_model.dart';
import 'package:salon/resources/components/services.dart';

class ServiceCategoryModel {
  final String category;
  final String id;
  final List<ServiceModel> services;

  ServiceCategoryModel({required this.id, required this.category, required this.services});
}