import 'package:celuapp/app_styles.dart';
import 'package:celuapp/size_config.dart';
import 'package:celuapp/zoom_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if(details.delta.dx < -6){
          Provider.of<MenuProvider>(context , listen: true).toggle();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
          top: SizeConfig.blockSizeHorizontal! * 1,
          left: 0,
          bottom: SizeConfig.blockSizeVertical! * 1,
          right: SizeConfig.screenWith! / 2,

        ),
        color: kBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildMenuItem(context, item: NavigationItem.home, text: 'Home',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            buildMenuItem(context, item: NavigationItem.profile, text: 'Perfil',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            buildMenuItem(context, item: NavigationItem.nearby, text: 'Locacion',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            Divider(
              color: kWhite.withOpacity(0.5),
            ),
             buildMenuItem(context, item: NavigationItem.configuracion, text: 'Configuracion',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            buildMenuItem(context, item: NavigationItem.notification, text: 'Notificacion',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            buildMenuItem(context, item: NavigationItem.mensajes, text: ' Mensajes',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            Divider(
              color: kWhite.withOpacity(0.5),
            ),
             buildMenuItem(context, item: NavigationItem.ayuda, text: 'ayuda',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            buildMenuItem(context, item: NavigationItem.bookmarket, text: 'Libro de quejas',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
            buildMenuItem(context, item: NavigationItem.salir, text: 'Salir',),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2,),

          ],
        ),

      ),
    );
  }
}

Widget buildMenuItem (
  BuildContext context , {
   required NavigationItem item ,
   required String text,
  // required String icon,
  }) {
  final provider =  Provider.of<MenuProvider>(context);
  final currentItem =  provider.navigationItem;
  final isSelected = item == currentItem;

  final color = isSelected? kBlue : kWhite;
 // final iconSvg = isSelected? '$icon{_enable.svg}' : '$icon{_disaable.svg}';

  SizeConfig().init(context);

  return GestureDetector(
    onTap: () => selectItem(context , item),
    child: AnimatedContainer(
      duration: const Duration(
      microseconds: 100,
      ),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(kBorderRadious20),
          bottomRight: Radius.circular(kBorderRadious20)
          ),
          color:  isSelected? kWhite : null, 
      ),
      height: SizeConfig.blockSizeVertical! * 5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeHorizontal! * 6, 
      ),
      child: Align(
        alignment: Alignment.centerLeft ,
        child: Row(
          children: [
            // Icon(icon as IconData?),

            SizedBox( width: SizeConfig.blockSizeHorizontal!*4),

            Text(text , style: TextStyle(
              color: color,
              fontSize: SizeConfig.blockSizeHorizontal! * 4,
            ),
            ),
            
          ],
        ),
      ),
    ),
  );

}

void selectItem(BuildContext context , NavigationItem item){
  final  provider = Provider.of<MenuProvider>(
    context ,
   listen: false
   );
  provider.setNavigationItem(item);
}
enum NavigationItem{
  home, profile,nearby ,bookmarket , notification , mensajes , configuracion , ayuda , salir
}