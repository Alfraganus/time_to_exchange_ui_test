import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TopAdds extends StatelessWidget {
  const TopAdds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          rowImage(image:'Ellipse 150.png'),
          rowImage(image: 'moto2.png',),
          rowImage(image: 'moto3.png',),
          rowImage(image: 'moto4.png',),
        ],
      ),
    );
  }
}

class rowImage extends StatelessWidget {
  final String image;

  rowImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: Container(
        // media/Ellipse 150.png
        width: 110,
        height: 110,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [HexColor('#7567CB'), HexColor('#C973B6'),HexColor('#FECF00')],
          ),
        ),
        child:Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Image.asset('media/${image}',fit: BoxFit.contain,),
        ),
      ),
    );
  }
}

