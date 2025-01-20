import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/color.dart';

class FooterBar extends StatelessWidget {
  const FooterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Pro", style: TextStyle(
                      fontSize: 14,
                      color:  AppColors.footerGrey,
                    ),),
                    ),
                     Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Entreprise", style: TextStyle(
                      fontSize: 14,
                      color:  AppColors.footerGrey,
                    ),),
                    ),
                     Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Store", style: TextStyle(
                      fontSize: 14,
                      color:  AppColors.footerGrey,
                    ),),
                    ),
                     Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Blog", style: TextStyle(
                      fontSize: 14,
                      color:  AppColors.footerGrey,
                    ),),
                    ),
                     Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("Careers", style: TextStyle(
                      fontSize: 14,
                      color:  AppColors.footerGrey,
                    ),),
                    ),
                     Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("English (English)", style: TextStyle(
                      fontSize: 14,
                      color:  AppColors.footerGrey,
                    ),),
                    ),
                    
                  ],
                );
  }
}