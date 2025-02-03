import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/theme/color.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  String fullResponse ='';
  @override
  void initState() {
    
    super.initState();
    ChatWebService().contentStream.listen((data){
      setState(() {
        fullResponse += data['data'];
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
        Markdown(
          data: fullResponse,
          shrinkWrap: true,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            codeblockDecoration:  BoxDecoration(
              color: AppColors.cardColor,
              borderRadius:  BorderRadius.circular(10),

            ),
             code: const  TextStyle(fontSize: 16),

 
          ),
        
        )
        
        
      ],
    );
  }
}