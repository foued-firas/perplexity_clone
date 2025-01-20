import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/color.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true ;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isCollapsed ? 64 : 128,
      color: AppColors.sideNav,
      child:  Column(
          crossAxisAlignment:  isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16,),
          const Icon(
            Icons.auto_awesome_mosaic ,
            color: AppColors.whiteColor,
            size: 30,
          ),
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: isCollapsed? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Container(
               margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              
                child: const Icon(
                Icons.add , 
                color: AppColors.iconGrey,
                size: 22,
                ),
              ),
              isCollapsed ? const  SizedBox() :
              const Text("Home",style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
              ),
              
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: const Icon(
              Icons.search ,
             color: AppColors.iconGrey,
            size: 30,),
          ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: const Icon(
              Icons.language ,
             color: AppColors.iconGrey,
            size: 22,),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: const Icon(
              Icons.auto_awesome ,
             color: AppColors.iconGrey,
            size: 22,),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: const Icon(
              Icons.cloud_outlined ,
             color: AppColors.iconGrey,
            size: 22,),
          ),
          const Spacer(),
          GestureDetector(
            onTap: (){
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
          
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child:  Icon(
                isCollapsed ?  Icons.keyboard_arrow_right :Icons.keyboard_arrow_left ,
               color: AppColors.iconGrey,
              size: 22,),
              
            ),
          ),
           const SizedBox(height: 16,),
        ],
      ),
    );
  }
}