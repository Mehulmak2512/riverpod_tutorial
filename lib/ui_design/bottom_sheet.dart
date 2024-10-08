import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_screen.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: Text("Clips",style: GoogleFonts.workSans(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2
            ),
            ),
          ),
          Expanded(
              child:  GridView.builder(
                  itemCount: 12,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,mainAxisExtent: 120,crossAxisSpacing: 15,mainAxisSpacing: 15
                  ),
                  itemBuilder: (context,index){
                    return RoundedContainer(color: Colors.blueGrey
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
