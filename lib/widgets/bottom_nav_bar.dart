import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';



class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          BottomNavItem(
            title: "Hoje", 
            svgScr: "assets/icons/calendar.svg",
            ),
          BottomNavItem(
            title: "Todos Exercícios", 
            svgScr: "assets/icons/gym.svg",
            isActive: true,
            ),
            BottomNavItem(
            title: "Configurações", 
            svgScr: "assets/icons/Settings.svg",
            ),
        ],
      ),
    );
  }
}


class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function()? press;
  final bool isActive;

  const BottomNavItem({
    Key? key, required this.svgScr, required this.title,this.press, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgScr, color: isActive ? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(color: isActive ? kActiveIconColor: kTextColor ),)
        ],
      ),
    );
  }
}
