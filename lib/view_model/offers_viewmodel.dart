import 'package:salon/model/offer_model.dart';

class OffersViewmodel {
  List<OfferModel> offers = [
    OfferModel(
      id: "1",
      discount: 20,
      image: "assets/offers/offer1.png",
    ),
    OfferModel(
      id: "2",
      discount: 15,
      image: "assets/offers/offer2.png",
    ),
    OfferModel(
      id: "3",
      discount: 30,
      image: "assets/offers/offer3.png",
    ),
    OfferModel(
      id: "4",
      discount: 25,
      image: "assets/offers/offer4.png",
    ),
    OfferModel(
      id: "5",
      discount: 10,
      image: "assets/offers/offer5.png",
    ),
  ];
}