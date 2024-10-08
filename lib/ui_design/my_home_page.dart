import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_tutorial/ui_design/bottom_sheet.dart';
import 'package:riverpod_tutorial/ui_design/character_model.dart';
import 'package:riverpod_tutorial/ui_design/detail_screen.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    var pageController = usePageController(initialPage: 0 ,viewportFraction: 1, keepPage: false);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        actions:[
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomSheetWidget()));
            },
            child: const Icon(
              Icons.search,
               size: 30,
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 18),
            child: Text(
              "Despicable Me",
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                fontSize: 38,
                letterSpacing: 1.2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Text(
              "Characters",
              style: GoogleFonts.workSans(fontSize: 32, fontWeight: FontWeight.normal, letterSpacing: 1.1),
            ),
          ),
          Expanded(
              child: PageView(controller: pageController, children: [
            for (int i = 0; i < character.length; i++)
              CharacterWidget(
                character: character[i],
                pageController: pageController,
                currentPage: i,
              )
          ])),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CharacterWidget extends StatelessWidget {
  final Character character;
  final PageController pageController;
  final int currentPage;

  const CharacterWidget({
    super.key,
    required this.character,
    required this.pageController,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 350),
              pageBuilder: (context, animation, secondaryAnimation) =>    DetailScreen(
                character: character,
              ),
            ));
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page! - currentPage;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }
          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: CharacterCardBackgroundClipper(),
                  child: Hero(
                    tag: "background-${character.colors}",
                    child: Container(
                      height: height * 0.55,
                      width: width * 0.9,
                      decoration:
                          BoxDecoration(gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: character.colors)),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: const Alignment(0, -0.4),
                  child: Hero(
                      tag: "image-${character.image}",
                      child: Image.asset(
                        character.image,
                        height: height * 0.55 * value,
                      ))),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, bottom: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Hero(
                      tag: "name-${character.name}",
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          character.name,
                          style: GoogleFonts.workSans(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.8),
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Tap to Read more",
                      style: GoogleFonts.workSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.8),
                        letterSpacing: 1.2,
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
