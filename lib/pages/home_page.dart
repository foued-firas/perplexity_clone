import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/footer_bar.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Row(
      children: [
       const SideBar(),
        Expanded(
          child: Column(
            children: [
              const Expanded(child: SearchSection()),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
               child:  FooterBar(),
              ),
          
            ],
          ),
        )
      ],
    ),
    );
  }
}