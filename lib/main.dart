import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:meditation_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor)
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(

            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text('Boa noite\nAdinê', 
                  style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  // .copyWith(fontWeight: FontWeight.w900) ?? SizedBox(),

                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5 ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pesquisar",
                        icon: SvgPicture.asset("assets/icons/search.svg"),

                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: const <Widget>[
                       CategoryCard(
                        title: "Recomendação Dieta", 
                        svgSrc: "assets/icons/Hamburger.svg" 
                            ),
                      CategoryCard(
                        title: "Exercícios", 
                        svgSrc: "assets/icons/Excrecises.svg" 
                            ),
                               CategoryCard(
                        title: "Meditação", 
                        svgSrc: "assets/icons/Meditation.svg" 
                            ),
                               CategoryCard(
                        title: "Yoga", 
                        svgSrc: "assets/icons/yoga.svg" 
                            ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
final String svgSrc;
final String title;


  const CategoryCard({
    Key? key, required this.svgSrc,required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),   
      ),
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(svgSrc),
          const Spacer(),
          Text(
            title, 
            textAlign: TextAlign.center,
            style: Theme.of(context)
            .textTheme
            .titleMedium
          //  .copyWith(fontSize: 15)
            )
        ],
      ),

    );
  }
}