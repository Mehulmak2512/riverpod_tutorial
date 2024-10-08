import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_tutorial/ui_design/character_model.dart';

class DetailScreen extends HookConsumerWidget {
  final Character character;

  const DetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      bottomSheet: DraggableScrollableSheet(
        initialChildSize: 0.06,
        maxChildSize: 0.2,
        minChildSize: 0.06,
        expand: false,
        builder: (BuildContext context, scrollController) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))),
            child: Stack(
              children: [
                ListView.builder(
                    itemCount: 12,
                    controller: scrollController,
                    padding: EdgeInsets.only(left: 15,right: 15,top: 50, bottom: 5),
                    itemExtent: 120,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RoundedContainer(color: Colors.blueGrey);
                    }),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text(
                    "Clips",
                    style: GoogleFonts.workSans(fontSize: 28, fontWeight: FontWeight.w600, letterSpacing: 1.2),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: "background-${character.colors}",
            child: DecoratedBox(
                decoration: BoxDecoration(gradient: LinearGradient(colors: character.colors, begin: Alignment.topRight, end: Alignment.bottomLeft))),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 35, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 40,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: "image-${character.image}",
                        child: Image.asset(
                          character.image,
                          height: height * 0.45,
                        ),
                      )),
                  Hero(
                    tag: "name-${character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        character.name,
                        style: GoogleFonts.workSans(
                          fontSize: 38,
                          fontWeight: FontWeight.w900,
                          color: Colors.white.withOpacity(0.8),
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    character.description,
                    style: GoogleFonts.workSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.8),
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final Color color;

  const RoundedContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
