import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/ui/trade_history.dart';

class CustomExpansion extends ConsumerStatefulWidget {
  const CustomExpansion({super.key});

  @override
  ConsumerState createState() => _CustomExpansionState();
}

class _CustomExpansionState extends ConsumerState<CustomExpansion> {
  @override
  Widget build(BuildContext context) {

    log("build calling");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        scrolledUnderElevation: 0,
        title:  Text(
          "Custom Expansion",
          style: Theme.of(context).appBarTheme.titleTextStyle
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {

          return ListItem(index: index);
        },
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final int index;
   ListItem({super.key, required this.index});

  final changeExpansionTile = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            log("button tapped");
            if (changeExpansionTile.value == false) {

              changeExpansionTile.value = true;
            } else {

              changeExpansionTile.value = false;
            }
          },
          child: ListTile(
            title: Text("CRUDE OIL",
                style: Theme.of(context).textTheme.labelLarge),
            subtitle: Text("2409.42",
                style: Theme.of(context).textTheme.labelSmall),
            leading: CircleAvatar(
              child: Text((index + 1).toString(),
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            trailing: ValueListenableBuilder(
              valueListenable: changeExpansionTile,
              builder: (BuildContext context, value, Widget? child) {
                return Icon(value
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down);
              },
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: changeExpansionTile,
          builder: (BuildContext context, bool value, Widget? child) {
            return value
                ? const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: DottedLine(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    lineLength: double.infinity,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.grey,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          TilGreyText(
                            text: "Order no.",
                          ),
                          TileBlackText(
                            text: "18474120",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          TilGreyText(
                            text: "Open time",
                          ),
                          TileBlackText(
                            text: "6 May 2024 at 05:52pm",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          TilGreyText(
                            text: "Order price",
                          ),
                          TileBlackText(
                            text: "2411.59",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          TilGreyText(
                            text: "Commission",
                          ),
                          TileBlackText(
                            text: "0",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
                : const SizedBox() ;
          },
        )
      ],
    );
  }
}
