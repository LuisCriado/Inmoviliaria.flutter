import 'package:celuapp/app_styles.dart';
import 'package:celuapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';



class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal:  kPadding8,
        ),
        height: 63,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: kPadding20,
        ) ,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Precio' , style: TextStyle(
                    color: kGrey85 ,fontSize: SizeConfig.blockSizeHorizontal! * 2.5
                  ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text('30.000' , style: TextStyle(
                    color: kGrey85 ,fontSize: SizeConfig.blockSizeHorizontal! * 4
                  ),
                  ),
                ],
              )
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("Apretaste en scar entrada");
                },
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadious10),
                    gradient: kLinearGradientBlue,
                  ),
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal:  kPadding24,
                  ),
                  child: Center(
                    child: Text("Consultar"  , 
                    style: TextStyle(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),),
              
                  ),
                ),
              )
          ],
        ),
      ),
      body: SafeArea(
        
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding24,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              
              children: [
                
                Container(
                  height: 319,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadious20,),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        offset: const Offset(0, 18),
                        blurRadius: 18 ,
                        color: kBlack.withOpacity(0.1),
          
                      ),
                    
                    ],
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.bbva.com/wp-content/uploads/2021/04/casas-ecolo%CC%81gicas_apertura-hogar-sostenibilidad-certificado-.jpg",)
                      ),
                  ),
                  child:Stack(
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
                                   Padding(
                                    padding: const EdgeInsets.all(kPadding20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CircleAvatar(
                                              radius: 17,
                                              backgroundColor: kBlack.withOpacity(0.24),
                                              child: const Icon(Icons.arrow_back_ios_sharp),
                                            ),
                                            CircleAvatar(
                                              radius: 17,
                                              backgroundColor: kBlack.withOpacity(0.24),
                                              child:  const Icon(Icons.bookmark_outline_sharp),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Casa en venta' ,style: TextStyle(
                                              color: kWhite,
                                              fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                                            ),
                                            
                                            ),
                                            SizedBox( height:  SizeConfig.blockSizeHorizontal!* 0.5,),

                                            Text('casa para millonarios' ,style: TextStyle(
                                              color: kWhite,
                                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                            ),
                                            ),
                                             SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 5,
                                              ),
                                            Row(
                                        children: [
                                          Row(
                                            children: [

                                              Container(
                                                height: SizeConfig.blockSizeHorizontal! * 7,
                                                width: SizeConfig.blockSizeHorizontal! * 7,
                                                decoration: BoxDecoration(
                                                  color: kWhite.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(kBorderRadious5),
                                                ),
                                                padding: const EdgeInsets.all(kPadding4),
                                                child: const Icon(Icons.add_home_work, color: kWhite,
                                                ),
                                                ),
                                              SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 0.5,
                                              ),
                                               Text('6 Habitaciones' , 
                                    style: TextStyle(
                                          color: kWhite,
                                          fontSize: SizeConfig.blockSizeHorizontal ! * 2.5,

                                    ),
                                    ),

                                            ],
                                          ),
                                          SizedBox(
                                            width: SizeConfig.blockSizeHorizontal! * 7.5 ,
                                          ),
                                           Row(
                                            children: [

                                              const Icon(Icons.bathtub_sharp, color: kWhite,),
                                              SizedBox(
                                                width: SizeConfig.blockSizeHorizontal! * 0.5,
                                              ),
                                               Text('  Baños : 2 , Patio , Pileta ,' , 
                                    style: TextStyle(
                                          color: kWhite,
                                          fontSize: SizeConfig.blockSizeHorizontal ! * 2,

                                    ),
                                    ),

                                            ],
                                          ),
                                        ],
                                      ),
                                          ],
                                          
                                        ),
                                      ],
                                    ),
                                    ),
                                  ],
                                ), 
                ),
                const SizedBox(
              height: kPadding24 ,
              ),
              Row(
                children: [
                  Text("Descripcion" , style: TextStyle(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                  ),
                ],

              ),
              const SizedBox(
              height: kPadding24 ,
              ),
              ReadMoreText('Esta casa esta equipada con lo que se te cante desde paneles slares asta vidrios q se te va a complicar limpiar buenisima la casa pero un dolor de huevo lavarla xD Dolor reprehenderit nostrud ad eu veniam proident. Mollit ullamco minim incididunt Lorem nisi voluptate consequat. Velit Lorem est consectetur tempor tempor. Esse commodo consectetur sit elit deserunt qui cupidatat aliqua velit dolor.',
              trimLines: 2 ,
               trimMode: TrimMode.Line,
                delimiter: '...',
                 trimCollapsedText: 'ver mas',
                  trimExpandedText: 'ver menos',
                   style: TextStyle(
                    color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal ! * 3,

              ), 
              moreStyle: TextStyle(
                    color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal ! * 3,

              ),
               lessStyle: TextStyle(
                    color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal ! * 3,

              ),
              
              ),
              const SizedBox(
              height: kPadding24 ,
              ),
              const Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGwFLXNyjhOhdOBuXAuGVIj9ROc6xVdWi8bQ&usqp=CAU'
                        ),
                        backgroundColor: kBlue
                      ),
                        SizedBox(
                        width: 17 ,
                        ),
                        Column(
                          
                        children: [
                          
                            Text('Jeff Bezos',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 40,
                            ),
                             ),
                             SizedBox(
                              height: 0.1
                             ),
                             Text('Administrativo',
                            style: TextStyle(
                              color: kGreyB7,
                              fontSize: 20,
                            ),
                             ),
                             

                             
                              
                             
                             
                           
                          ],
                        )
                        
                    ],
                    
                  ),
                  Padding(
                               padding: EdgeInsets.only(left: 200),
                               child: Row(
                                
                                  
                                children: [
                                                         
                                   Icon(Icons.phone_android_outlined ,size: 42,),
                                    SizedBox(
                              width: 45
                             ),
                                    
                                   
                               Icon(Icons.message_rounded,size: 42,)
                                ],
                               ),
                             )
                  
                ],        
                 
              ), 
               const SizedBox(
              height: kPadding24 ,
              ),
              Row(
                children: [
                  Text("Galeria" , style: TextStyle(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                  ),
                ],

              ),
              const SizedBox(
                height: kPadding24
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: kPadding16,
                  childAspectRatio: 1,
                  ), 
                  itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadious10),
                      color: kBlue,
                      image: const DecorationImage(
                        
                        image: NetworkImage('https://canalhogar.com/wp-content/uploads/2023/01/Disenos-de-Casas-Modernas-Interiores-y-Exteriores.jpeg')
                        ),

                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: index ==4-1? kBlack.withOpacity(0.3):null,
                        borderRadius: BorderRadius.circular(kBorderRadious10),
                      ),
                      child: Center(
                        child:  index == 4-1? Text('+7' ,style:  TextStyle(
                          color: kWhite,
                          fontSize: SizeConfig.blockSizeHorizontal!* 5,
                        ),):null,
                      ),
                    ),
                  );
                }
                
                 ),
                  const SizedBox(
              height: kPadding24 ,
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadious20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://storage.googleapis.com/support-forums-api/attachment/thread-9014924-11470506657998028469.JPG')
                    ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadious20),
                            bottomRight: Radius.circular(kBorderRadious20),
                          ),
                          gradient: kLinearGradientWhite2,
                        ),
                      ),
                    )
                  ],
                )
                ,
              ),
                const SizedBox(
              height: kPadding24 ,
              ),
                  
              ],           
            ),
          ),
        ),
        ),
    );
  }
}