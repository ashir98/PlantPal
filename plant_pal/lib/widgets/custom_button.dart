import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plant_pal/utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  String text;
  final void Function()? onPress;
  PrimaryButton({required this.text , required this.onPress});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return   SizedBox(
                  width: size.width,
                  height: 50,
                  child: ElevatedButton(
                              
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    
                  ),
                  onPressed:onPress,
                  
                  child: Text(text,style: TextStyle(color: Colors.white, fontSize: size.width*0.045),),
                              ),
                );
  }
}