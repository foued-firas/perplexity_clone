import 'package:flutter/material.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/widgets/footer_bar.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String fullResponse ="";

  @override
  void initState() {
    
    super.initState();
    ChatWebService().connect();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Row(
      children: [
       const SideBar(),
        Expanded(

          child: Column(
            children: [
               Expanded(child: SearchSection()),
            
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