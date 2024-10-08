import 'dart:developer';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/ui/riverpod.dart';

class TradeHistory extends ConsumerStatefulWidget {
  const TradeHistory({super.key});

  @override
  ConsumerState<TradeHistory> createState() => _TradeHistoryState();
}

class _TradeHistoryState extends ConsumerState<TradeHistory> {

  final searchController = TextEditingController();
  final searchFousNode = FocusNode();

  @override
  Widget build(BuildContext context) {

    log("build calling");

    return Scaffold(
      backgroundColor: const Color(0xffF7F4F0),
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xffF7F4F0),
        toolbarHeight: 200,
        flexibleSpace: Container(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 25,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleButton(
                        icon: Icons.arrow_back,
                      ),
                      Text(
                        "Trade History",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleButton(
                          icon: Icons.download_outlined,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 18.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: CupertinoColors.systemYellow,
                          size: 28,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(322307)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Icon(
                          Icons.filter_list_rounded,
                          color: Colors.indigo,
                          size: 28,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Last 1 Year",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Consumer(
                    builder: (context, ref, child) {

                      var _openTrades = ref.watch(tradesProvider);

                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _openTrades
                                  ? null
                                  : ref
                                      .read(tradesProvider.notifier)
                                      .openTrade();
                            },
                            child: TradesButton(
                                text: "Open Trades",
                                textColor:
                                    _openTrades ? Colors.indigo : Colors.black,
                                bgColor: _openTrades
                                    ? Colors.white
                                    : Colors.transparent),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              _openTrades
                                  ? ref
                                      .read(tradesProvider.notifier)
                                      .closedTrade()
                                  : null;
                            },
                            child: TradesButton(
                                text: "Closed Trades",
                                textColor:
                                    _openTrades ? Colors.black : Colors.indigo,
                                bgColor: _openTrades
                                    ? Colors.transparent
                                    : Colors.white),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          searchFousNode.unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  focusNode: searchFousNode,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.all(14),
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      hintText: "Search Trades",
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  height: 17,
                ),
                ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: 15,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ExpansionTileCard(
                        baseColor: Colors.white,
                        elevation: 0,
                        expandedColor: Colors.white,
                        shadowColor: Colors.transparent,
                        initialElevation: 0,
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "CRUDEOIL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "2409.42",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: index  % 2 == 0
                                  ? Colors.green
                                  : Colors.red),
                          child: Text(
                            index % 2 == 0 ? "Buy" : "Sell",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        children: const [
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      text: "Commision",
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
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
}

class TileBlackText extends StatelessWidget {
  final String text;

  const TileBlackText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
          height: 2
      ),
    );
  }
}

class TilGreyText extends StatelessWidget {
  final String text;

  const TilGreyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.grey,
          height: 2),
    );
  }
}

class TradesButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  const TradesButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 42,
        width: 145,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final IconData icon;

  const CircleButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
