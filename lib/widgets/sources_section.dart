import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/color.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  List<Map<String, dynamic>> searchResults = [
  {
    "title": "Ind vs Aus Live Score 4th Test",
    "url": "https://www.mon..."
  },
  {
    "title": "Ind vs Aus Live Boxing Day Test",
    "url": "https://timesofin..."
  },
  {
    "title": "Ind vs Aus - 4 Australians",
    "url": "https://economicti..."
  }
];
  @override
  Widget build(BuildContext context) {
    return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          children: [
         Icon(Icons.source_outlined,color: Colors.white,),
         SizedBox(width: 8,),
         Text("Source",style: 
         TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
         ),)
          ],
        ),
        SizedBox(height: 16,),
        Wrap(
          spacing: 16, // Espace horizontal entre les éléments
          runSpacing: 16,// Espace vertical entre les lignes
          children:  searchResults.map((res){
            return Container(
              padding: EdgeInsets.all(16),
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child:  Column(
                children: [
                  Text(res['title'],style: 
                  TextStyle(
                    
                    fontWeight: FontWeight.w500,

                  ),
                  maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8,),
                  Text(res['url'],style: 
                  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey,

                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),

            );

            }).toList(),

          

        ),
      ],
    );
  }
}