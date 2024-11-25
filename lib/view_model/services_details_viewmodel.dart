import '../model/how_it_works_step_model.dart';
import '../model/overview_model.dart';

class ServicesDetailsViewmodel {
  List<OverviewModel> overview = [
    OverviewModel(id: "1", title: "Groomed nails", image: "assets/service_details/overview/1.png"),
    OverviewModel(id: "2", title: "Mess free", image: "assets/service_details/overview/2.png"),
    OverviewModel(id: "3", title: "Hygenic", image: "assets/service_details/overview/3.png"),
  ];

  List<HowItWorksStepModel> howItWorksSteps = [
    HowItWorksStepModel(
      image: 'assets/service_details/how_it_works/step_1.png', // Replace with your image path
      title: 'Cut & File',
      desc: 'Old nail polish removal followed by cutting and filing of nails as per your preference',
    ),
    HowItWorksStepModel(
      image: 'assets/service_details/how_it_works/step_2.png', // Replace with your image path
      title: 'Applying nail polish',
      desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
    ),
  ];
}