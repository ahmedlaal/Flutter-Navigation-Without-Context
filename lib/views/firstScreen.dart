import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigationwithoutcontext/locator.dart';
import 'package:navigationwithoutcontext/services/navigationService.dart';

class FirstScreen extends StatelessWidget {
const FirstScreen({super.key});

    // NavigationService navService = NavigationService();
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ Center(child: Text("First"),),
        
        Center(
          child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             GestureDetector(
                  onTap: () {
                locator<NavigationService>().goBack();
                    
                  },
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Move back",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
            SizedBox(width: 20,),
                 GestureDetector(
                  onTap: () {
                locator<NavigationService>().pushTo("second");
                    
                  },
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Move to next",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
          ],),
        ),
        
        
        
        ]),
    ),
      
    );
  }
}