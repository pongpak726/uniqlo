import 'package:flutter/material.dart';
import 'package:uniqlo/model/cloth.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothDetail extends StatefulWidget{
 final Cloth cloth;

  const ClothDetail({super.key, required this.cloth});

  @override
  State<ClothDetail> createState() => ClothDetailState();
 
}

class ClothDetailState extends State<ClothDetail>{
  int qty = 1;
  
  @override
  Widget build(BuildContext context) {
   final totalPrice = widget.cloth.imagePrice * qty;
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloth Detail'),
      ),
      body: Center(
         child: Column(
        children: [
        Image.asset(widget.cloth.imageUrl , fit: BoxFit.contain),
        const SizedBox(height: 20.0,),
        Text(
          widget.cloth.imgLabel,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          widget.cloth.imageText,
          style: GoogleFonts.roboto(
            fontSize: 20.0,
            fontWeight:FontWeight.bold
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (qty > 1) qty--;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1),
                  ),
                  child: const Center(
                    child: Text("-", 
                    style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
          
              const SizedBox(width: 16),
          
              Text("$qty", 
              style: const TextStyle(fontSize: 20)),
          
              const SizedBox(width: 16),
          
              GestureDetector(
                onTap: () {
                  setState(() {
                    qty++;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1),
                  ),
                  child: const Center(
                    child: Text("+", 
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),

              Spacer(),

                  GestureDetector(
                    onTap: () {}, 
                    child: Center(
                      child: Text(
                        "Total ฿${totalPrice.toStringAsFixed(0)}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  )

            ],
          ),
        ),

        ]
         ),
      ),
    );
  }

}
 