import 'package:flutter/material.dart';

// const backgroundStartColor = Color(0xFFFFD500);
// const backgroundEndColor = Color(0xFFF6A00C);

// const backgroundStartColor = Color(0xFF5860F0);
// const backgroundEndColor = Color(0xFF59ADF0); //59ADF0

// const backgroundStartColor = Color(0xFF5987F0);
// const backgroundEndColor = Color(0xFF5987F0); //183A80

const backgroundStartColor = Color(
    0xFF990011); //422057 //101820 //5f4b8b //00203f //606060 //00539c //0063b2 //990011 //CBCE91
const backgroundEndColor = Color(
    0xFFFCF6F5); //FCF951 //fee715 //e69a8d //adefd1 //d6ed17 //eea47f //9CC3D5 //FCF6F5 //76528B
const buttonColor = backgroundStartColor;

const textColor = backgroundEndColor;

void showSnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
        height: 50,
        child: Text(
          msg,
          style: const TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundStartColor,
    ),
  );
}


//