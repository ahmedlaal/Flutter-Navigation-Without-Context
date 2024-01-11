import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigationwithoutcontext/locator.dart';
import 'package:navigationwithoutcontext/services/navigationService.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

    // NavigationService navService = NavigationService();
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children:[ Center(child: Text("Second"),),
        
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   _passwordVisible = !_passwordVisible;
                    // });
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
                   
                    locator<NavigationService>().pushTo("home");
                  },
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Move to next",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
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