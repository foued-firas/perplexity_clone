import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/theme/color.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  bool isLoading = true ;
  String fullResponse ="""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""";
  @override
  void initState() {
    
    super.initState();
    ChatWebService().contentStream.listen((data){
      if(isLoading){
        fullResponse='';
      }
      setState(() {
        fullResponse += data['data'];
        isLoading = false;
      });

    });
     
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Perplexity',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
        Skeletonizer(
          enabled: isLoading,
          child: Markdown(
            data: fullResponse,
            shrinkWrap: true,
            styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              codeblockDecoration:  BoxDecoration(
                color: AppColors.cardColor,
                borderRadius:  BorderRadius.circular(10),
          
              ),
               code: const  TextStyle(fontSize: 16),
          
           
            ),
          
          ),
        )
        
        
      ],
    );
  }
}