// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:plant_pal/utils/app_colors.dart';

class CarouselCard extends StatelessWidget {
  String image;
  CarouselCard({required this.image ,super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(

      elevation: 0.3,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          color:AppColor.carosuelBgColor

        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get special discount",
                      style: TextStyle(
                          fontSize: size.width*0.05 ,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Upto 35%",
                      style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600, fontSize: size.width*0.1),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0
                      ),
                      onPressed:() {
                        
                      },
                      child: Text("Shop now", style: TextStyle(color: Colors.black),)
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.network(
                  image,
                  width: 200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
