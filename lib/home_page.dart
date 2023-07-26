
import 'package:celuapp/app_styles.dart';
import 'package:celuapp/product_detail_page.dart';
import 'package:celuapp/size_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Departamentos",
    "Casasa",
    "PH",
    "Terreno",
    "Alquiler",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20 ,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lugar',
                            style: TextStyle(
                              color: kGrey83,
                              fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                            ),
                            ),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical!*0.5,
                            ),
                          Row(
                            children: [
                              Text(
                                "Usuario",
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: SizeConfig.blockSizeHorizontal!*5,
                                ),
                             ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal!*0.5,
                              ),
                             const  Icon(Icons.arrow_drop_down, color: kGrey85 ),
                            ],
                          )
                        ],
                      ),
                      const Icon(Icons.add_alert_rounded, color: kGreyB7 ),
                    ],
                  ),
                  ),
                  const SizedBox( height:  kPadding24,),
                  Padding(padding: const EdgeInsets.symmetric(
                    horizontal: kPadding20,             
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: kBlack,
                           fontSize: SizeConfig.blockSizeHorizontal! * 3,

                          ),
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            contentPadding:const EdgeInsets.symmetric(
                              horizontal: kPadding16,
                            ),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(kPadding8,
                              ),
                              child: Icon(Icons.search_sharp),
                              ),
                            hintText: 'Busca Tu Inmueble',
                            border: kInputBorder,
                            errorBorder: kInputBorder,
                            disabledBorder: kInputBorder,
                            focusedBorder: kInputBorder,
                            enabledBorder: kInputBorder,
                            hintStyle: TextStyle(
                              color: kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal!*3,                            
                            ),
                            filled: true,
                            fillColor: kWhiteF7,
                          ),
                        ),
                        ),
                        SizedBox(width: SizeConfig.blockSizeHorizontal!*4,
                        ),
                        Container(
                          height: 49,
                          width: 49,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular
                            (kBorderRadious10),
                            gradient: kLinearGradientBlue,
                          ),
                          child: const Icon(Icons.filter_list_alt),
                        )
                    ],
                  ),
                  ),
                  const SizedBox( height: kPadding24,),
                  SizedBox(
                    width: double.infinity,
                    height: 34,
                    child: ListView.builder(
                      physics: const  BouncingScrollPhysics(),
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index)
                                            {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0? kPadding20 : 12,
                              right: index == categories.length-1 ? kPadding20 : 0,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: kPadding16,
                            ),
                            height: 34,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color: current == index ? kBlue.withOpacity(0.1) : kBlue.withOpacity(0),
                                )
                              ],
                              gradient: current == index ? kLinearGradientBlue : kLinearGradientWhite,
                              borderRadius: BorderRadius.circular(
                                kBorderRadious10,
                                ),
                            ),
                            child: Center(
                              child: Text(categories[index],
                              style: TextStyle(
                                color: current == index ? kBlack : kBlack0D,
                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                              ) ,
                              ) 
                            ),
                          ),
                        );
                      },
                      ),
                  ),
                  const SizedBox(height: kPadding24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cerca Tuyo', 
                         style: TextStyle(
                          color: kBlack ,
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                         ),
                         ),
                         Text('Ver mas', 
                         style: TextStyle(
                          color: kGrey85 ,
                          fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                         ),),
                      ],
                    ),
                    ), 
                    const SizedBox(height: kPadding24,),
                    SizedBox(
                      height: 272,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (() =>Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> const
                            ProductDetailPage(),
                            ),
                            )),
                            child: Container(
                              height: 272,
                              width: 222,
                              margin: EdgeInsets.only(
                                left: kPadding20,
                                right: index == 5 - 1 ? kPadding20 : 0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  kBorderRadious20,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color:kBlack.withOpacity(0.1),
                                )
                                ],
                                image: const DecorationImage(
                                  fit:BoxFit.cover,
                                  image: NetworkImage('https://static.tokkobroker.com/water_pics/38539378497264564747340576800382253173673875442662209516791364118439968763010.jpg'),)
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 136,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(kBorderRadious20),
                                          bottomRight: Radius.circular(kBorderRadious20)
                                        ),
                                        gradient: kLinearGradientClack
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:kPadding16 , vertical: kPadding20 ,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(
                                                    kBorderRadious20
                                                  ),
                                                  color: kBlack.withOpacity(0.24),
                                                ),
                                                padding: const EdgeInsetsDirectional.symmetric(
                                                  horizontal: kPadding8,
                                                  vertical: kPadding4,
                                                ),
                                                child: Row(
                                                  children: [
                                                    const  Icon(Icons.edit_location_alt_rounded ,color: kWhite,),
                                                     const SizedBox(
                                                      width: kPadding4,
                                                     ),
                                                     Text('15km', style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                                     ),
                                                     ),
                                                  ],
                                                ),
                                                
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Departamento", style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                                ), 
                                                ),
                                                SizedBox(
                                                  height: SizeConfig.blockSizeVertical! * 0.5,
                                                ),
                                                Text("Costa Salguero", style: TextStyle(
                                                      color: kWhite,
                                                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                                ), 
                                                ),
                                             ],
                                            )
                                        ],

                                      )
                                      
                                    ) ,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: kPadding24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Refernciados', 
                         style: TextStyle(
                          color: kBlack ,
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                         ),
                         ),
                         Text('Ver mas', 
                         style: TextStyle(
                          color: kGrey85 ,
                          fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                         ),),
                      ],
                    ),
                    ), 
                    const SizedBox(height: kPadding24,
                    ),
                    Padding(padding: const EdgeInsets.symmetric(
                      horizontal:  kPadding20,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics:const NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 70,
                          margin: const EdgeInsets.only(
                            bottom: kPadding24,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(kBorderRadious10),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0,
                                      offset: const Offset(0, 18),
                                      blurRadius: 18,
                                      color: kBlack.withOpacity(0.1)
                                      ),
                                  ],
                                  image: const  DecorationImage(
                                    fit: BoxFit.cover,
                                    image:  NetworkImage('https://www.sandrafernandezasociados.com/uploads/sandrafernandezasociados/images/16071384507p0d6-img-20201204-wa0242.jpg')
                                    ),
                                ) ,
                              ),
                              SizedBox( 
                                width: SizeConfig.blockSizeHorizontal! * 4.5 
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    
                                    Text('Monoambiente Palermo' , 
                                    style: TextStyle(
                                      color: kBlack,
                                      fontSize: SizeConfig.blockSizeHorizontal ! * 3,

                                    ),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.blockSizeHorizontal! * 0.5,
                                    ),
                                     Text('Comodidades : ' , 
                                    style: TextStyle(
                                      color: kBlue,
                                      fontSize: SizeConfig.blockSizeHorizontal ! * 2.5,

                                    ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [

                                              const Icon(Icons.add_home_work_outlined),
                                              SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 0.5,
                                              ),
                                               Text('1 :Ambiente' , 
                                    style: TextStyle(
                                          color: kGrey85,
                                          fontSize: SizeConfig.blockSizeHorizontal ! * 2,

                                    ),
                                    ),

                                            ],
                                          ),
                                          SizedBox(
                                            width: SizeConfig.blockSizeHorizontal! *  3,
                                          ),
                                           Row(
                                            children: [

                                              const Icon(Icons.audiotrack_sharp),
                                              SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 0.5,
                                              ),
                                               Text(' 1 : Baño y Lavadero' , 
                                    style: TextStyle(
                                          color: kGrey85,
                                          fontSize: SizeConfig.blockSizeHorizontal ! * 2,

                                    ),
                                    ),

                                            ],
                                          ),
                                        ],
                                      ),
                                      ),
                                  ],
                                )
                                )
                            ],
                          ),
                        );
                        
                      },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}