import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search_bar.dart';

import '../widgets/session_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditação",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "3-10 MIN Curso",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: size.width * .6,
                      child: const Text(
                          "Viva feliz e saudável aprendendo os fundamentos da meditação e atenção plena.")),
                  SizedBox(width: size.width * .5, child: const SearchBar()),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SeassionCard(
                        seassionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SeassionCard(seassionNum: 2, press: () {}),
                      SeassionCard(seassionNum: 3, press: () {}),
                      SeassionCard(seassionNum: 4, press: () {}),
                      SeassionCard(seassionNum: 5, press: () {}),
                      SeassionCard(seassionNum: 6, press: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Meditação",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(2),
                    height: 90,  //overflow era pra ser 90
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          )
                        ]),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/Meditation_women_small.svg",),
                            const SizedBox(width: 10,), //era pra ser 20
            
                            Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Básico 2", style: Theme.of(context).textTheme.subtitle2,),
                                const Text("Comece praticando"),
                              ],
                            )
                            
                            ),
                            Padding(padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                            ),
                        
            
                          ],
                        ),
                        
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

