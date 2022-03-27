import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    Key? key,
  }) : super(key: key);

  //ver los parametros que falta al widget.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 18),
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: Image(
              image: AssetImage(
                'assets/barberia.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Text(
              "Barber Shop",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Text(
              "La única barbería de Cuba con servicio gratis",
              style: TextStyle(
                  fontSize: 10.5,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(88, 88, 88, 1)),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("3.9",
                  style: TextStyle(color: Color.fromRGBO(71, 141, 247, 1))),
              Icon(
                Icons.star,
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color(0xfff18cdca),
              )
            ],
          )
        ],
      ),
    );
  }
}
