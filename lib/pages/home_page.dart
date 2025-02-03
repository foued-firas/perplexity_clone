import 'package:flutter/foundation.dart';
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
       kIsWeb ?
       const SideBar() : const SizedBox(),
        Expanded(

          child: Padding(
            padding: !kIsWeb ? const  EdgeInsets.all(8.0): EdgeInsets.zero,
            child: Column(
              children: [
                 Expanded(child: SearchSection()),
              
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                 child:  FooterBar(),
                ),
            
              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}