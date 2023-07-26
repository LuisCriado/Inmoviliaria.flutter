import 'package:flutter/material.dart';

// con lores

const Color kWhite = Color(0xffffffff);
const Color kWhiteF7 = Color(0xCCFFFFFF);
const Color kWhiteFA = Color(0xffFAFAFA);
const Color kWhiteEF = Color(0xffEFEFEF);

const Color kBlack = Color(0xff000000);
const Color kBlack0D = Color(0xdd0d0d0d);

const Color kGrey = Color(0xffD7D7D7);
const Color kGreyB7 = Color(0xffB7B7B7);
const Color kGrey8E = Color(0xff8E8E8E);
const Color kGrey83 = Color(0xff838383);
const Color kGrey85 = Color(0xff858585);

const Color kBlue = Color(0xff0A8ED9);
const Color kLightBlue = Color(0xffA0DAFB);


// gradientes

Gradient kLinearGradientClack = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: <Color>[
    kBlack.withOpacity(0.8),
    kBlack0D.withOpacity(0),
  ],
  tileMode: TileMode.clamp,
  );

 const Gradient kLinearGradientWhite = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
   kLightBlue,
    kWhite,
  ],
  tileMode: TileMode.clamp,
  );

  const Gradient kLinearGradientBlue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      kLightBlue,
      kBlue,
      
    ],
    tileMode: TileMode.clamp,
    );


const Gradient kLinearGradientWhite2 = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
   
    kWhite,
  ],
  tileMode: TileMode.clamp,
  );
 


  // Bordes

  const double kBorderRadious20 = 20.0;
  const double kBorderRadious10 = 10.0;
  const double kBorderRadious5 = 5.0;

  // padings

  
  const double kPadding32 = 32.0;
  const double kPadding24 = 24.0;
  const double kPadding20 = 20.0;
  const double kPadding16 = 16.0;
  const double kPadding8 = 8.0;
  const double kPadding4 = 4.0;

  //Comienzo del app styles

  final kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadious10),
    borderSide: const BorderSide(
      color: kWhite,
    )
  );


