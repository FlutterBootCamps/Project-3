import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondContainerWedgits extends StatelessWidget {
  const SecondContainerWedgits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 400,
          height: 200,
          child: Stack(
            children: [
              Center(
                child: Container(
  height: 145,
  width: 373,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(18),
    color: Color.fromRGBO(140, 236, 138, 0.2), 
  ),
)
                
              ),
               Positioned(
         top: 45,
         left: 40,
         child: Container(
           height: 60,
           width: 250,
           child: Text(
             'Invite a Friend and earn Plantify rewards',
             style: GoogleFonts.philosopher(
               fontSize: 24,
               fontWeight: FontWeight.w700,
               color: Color(0xff002140),
             ),
           ),
         ),
         
       ),
       Positioned(
                  bottom: 120,
                  left: 340,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 26.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 150,
                  left: 350,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 25.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 135,
                  left: 360,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 27.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 100,
                  left: 320,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 35.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 100,
                  left: 355,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 34.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 130,
                  left: 20,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 32.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 150,
                  left: 30,
                  child:  Image(
                      image: AssetImage('assets/Ellipse 33.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 27,
                  left: 300,
                  child:  Image(
                      image: AssetImage('assets/Group 46L.png'),
                    ),
                  ),
                  Positioned(
                  bottom: 45,
                  left: 200,
                  child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0D986A)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      child: Text(
        'Invite',
        style: TextStyle(
          color: Color(0xffFFFFFF),
        ),
      ),
    )
                   
                  ),
       Positioned(
         bottom: 28,
         left: 42,
         child: Container(
           height: 60,
           width: 150,
           child: Text(
             'Redeem them to get instant discounts',
             style: GoogleFonts.poppins(
               fontSize: 13,
               fontWeight: FontWeight.w700,
               color: Color(0xff0D986A),
             ),
           ),
         ),
       ),
              ]),);
  }
}