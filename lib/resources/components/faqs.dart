import 'package:flutter/material.dart';
import '../../view_model/services_details_viewmodel.dart';

class Faqs extends StatelessWidget {
  Faqs({super.key});

  final ServicesDetailsViewmodel _detailsViewmodel = ServicesDetailsViewmodel();

  final List<Map<String, String>> faqs = [
    {
      'question': 'What is Flutter?',
      'answer': 'Flutter is an open-source UI software development toolkit created by Google.',
    },
    {
      'question': 'How does GetX simplify state management?',
      'answer': 'GetX provides a reactive programming model that reduces boilerplate code and simplifies state management.',
    },
    {
      'question': 'What is MVVM architecture?',
      'answer': 'MVVM stands for Model-View-ViewModel. It separates the business logic, UI, and data in an application.',
    },
    {
      'question': 'Why use Flutter for mobile development?',
      'answer': 'Flutter allows for fast development with a single codebase for both iOS and Android platforms.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: faqs.map((faq) {
            return FAQItem(
              question: faq['question']!,
              answer: faq['answer']!,
            );
          }).toList(),
        ),
      );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({required this.question, required this.answer, Key? key}) : super(key: key);

  @override
  State<FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.question,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Icon(
                  _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded)
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              widget.answer,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        const Divider(),
      ],
    );
  }
}
