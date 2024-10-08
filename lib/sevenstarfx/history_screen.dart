import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/sevenstarfx/controller/withdraw_request_controller.dart';
import 'package:riverpod_tutorial/shimmer_loading_effect/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  HistoryScreenState createState() => HistoryScreenState();
}

class HistoryScreenState extends ConsumerState<HistoryScreen> {

  ValueNotifier<int> page = ValueNotifier(1);
  ValueNotifier<bool> isLoading = ValueNotifier(false);
  ValueNotifier<bool> isFinished = ValueNotifier(false);

  final _scrollController = ScrollController();
  final searchController = TextEditingController();
  final searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollListener);
    log("init page ----> ${page.value}");
    ref.read(withRequestHistoryListProvider.notifier).historyList(page: 1);
  }

  @override
  Widget build(BuildContext context) {
    final listProviderLength = ref.watch(withRequestHistoryListProvider.select((value) => value.length));

    return GestureDetector(
      onTap: () {
        searchFocusNode.unfocus();
      },
      onLongPress: () {
        searchFocusNode.unfocus();
      },
      onLongPressDown: (_) {
        searchFocusNode.unfocus();
      },
      onLongPressUp: () {
        searchFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          title: const Text(
            "My History",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 18, right: 18, bottom: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        controller: searchController,
                        focusNode: searchFocusNode,
                        decoration: InputDecoration(
                          hintText: "Search deposits",
                          hintStyle: const TextStyle(color: Colors.grey, fontSize: 19, fontWeight: FontWeight.w400),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      size: 45,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Expanded(
                          child: ValueListenableBuilder(
                            valueListenable: isLoading,
                            builder: (context, value, child) {
                              return ListView.separated(
                                itemCount: value ? listProviderLength + 1 : listProviderLength,
                                physics: const ScrollPhysics(),
                                controller: _scrollController,
                                itemBuilder: (context, index) {
                                  if (value) {
                                    if (index == listProviderLength) {
                                      return Container(
                                        color: Colors.grey,
                                        height: 100,
                                        child: const Center(
                                          child: CircularProgressIndicator(
                                            color: Colors.deepOrange,
                                          ),
                                        ),
                                      );

                                      // return  Padding(
                                      //   padding: const EdgeInsets.all(10.0),
                                      //   child: Row(
                                      //     children: [
                                      //       ShimmerWidget.circular(width: 45, height: 45),
                                      //       SizedBox(width: 10,),
                                      //       Column(
                                      //         crossAxisAlignment: CrossAxisAlignment.start,
                                      //         children: [
                                      //           Row(
                                      //               children: [
                                      //                 ShimmerWidget.rectangular(height:15,width: 85,),
                                      //                 SizedBox(width: 10,),
                                      //                 ShimmerWidget.rectangular(height:15,width: 85,),
                                      //               ]
                                      //           ),
                                      //           SizedBox(height:5,),
                                      //           ShimmerWidget.rectangular(height:15,width: 160,),
                                      //         ],
                                      //       ),
                                      //       Spacer(),
                                      //       Column(
                                      //         crossAxisAlignment: CrossAxisAlignment.end,
                                      //         children: [
                                      //           ShimmerWidget.rectangular(height:15,width: 40,),
                                      //           SizedBox(height: 5,),
                                      //           ShimmerWidget.rectangular(height:15,width: 80,),
                                      //         ],
                                      //       )
                                      //
                                      //     ],
                                      //   ),
                                      // );
                                    }
                                  }
                                  return ListTileView(
                                    index: index,
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider(
                                    color: Colors.grey,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(scrollListener);
    searchFocusNode.dispose();
    searchController.dispose();
    page.dispose();
    isLoading.dispose();
    isFinished.dispose();
    super.dispose();
  }

  Future<void> scrollListener() async {
    if (isLoading.value || isFinished.value) return;
    // log(isLoading.value.toString());
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      isLoading.value = true;
      page.value = page.value + 1;
      // log("page ----> ${page.value}");
      await ref.read(withRequestHistoryListProvider.notifier).historyList(page: page.value).then((value) {
        if (value.length < 15) {
          isFinished.value = true;
        }
        isLoading.value = false;
      });
      // log("loading value --> ${isLoading.value}");
    }
  }
}

class ListTileView extends ConsumerWidget {
  final int index;

  const ListTileView({required this.index, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // log(page.toString());

    final data = ref.watch(withRequestHistoryListProvider.select((value) => value[index]));

    // log("data is --> $data");

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23,
            backgroundImage: NetworkImage(data.image.toString()),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: data.paymentProcessor.toString(),
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "#${data.ourTransactionId.toString()}",
                          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.grey),
                        ),
                      ])),
              Text(
                data.createdAt.toString(),
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$${data.amount.toString()}",
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              Row(
                children: [
                  if (data.status.toString() == "Pending") ...[
                    const CustomIcon(
                      color: Colors.deepOrange,
                      icons: Icons.watch_later_outlined,
                    ),
                  ] else
                    if (data.status.toString() == "Rejected") ...[
                      const CustomIcon(
                        color: Colors.red,
                        icons: Icons.block_flipped,
                      ),
                    ] else
                      if (data.status.toString() == "Accepted") ...[
                        const CustomIcon(
                          color: Colors.green,
                          icons: Icons.check,
                        ),
                      ] else
                        ...[
                          const CustomIcon(
                            color: Colors.grey,
                            icons: Icons.close,
                          ),
                        ],
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    data.status.toString(),
                    style: TextStyle(
                        fontSize: 15,
                        color: data.status.toString() == "Pending"
                            ? Colors.deepOrange
                            : data.status.toString() == "Rejected"
                            ? Colors.red
                            : data.status.toString() == "Accepted"
                            ? Colors.green
                            : Colors.grey),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final Color color;
  final IconData icons;

  const CustomIcon({super.key, required this.color, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icons,
      color: color,
      size: 16,
    );
  }
}
