import 'package:flutter/material.dart';
import 'package:uniqlo/model/cloth.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothDetail extends StatelessWidget{
 Cloth cloth;

  ClothDetail({super.key, required this.cloth});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloth Detail'),
      ),
      body: Center(
         child: Column(
        children: [
        Image.asset(cloth.imageUrl),
        const SizedBox(height: 20.0,),
        Text(
          cloth.imgLabel,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          cloth.imageText,
          style: GoogleFonts.roboto(
            fontSize: 20.0,
            fontWeight:FontWeight.bold
          ),
        ),
        ]
         ),
      ),
    );
  }
 
}