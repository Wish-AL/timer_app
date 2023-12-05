import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../../timetable/view/timetable_screen.dart';
import '../cubit/main_page_cubit.dart';
import 'additional_options_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = BlocProvider.of<MainPageCubit>(context).state.mainPageData;
    return Scaffold(
      appBar: CupertinoNavigationBar(
        border: const Border(bottom: BorderSide.none),
        backgroundColor: const Color(0xFFFEFEFE).withOpacity(1),
        leading: IconButton(
          //iconSize: 24,
          icon: const Icon(CupertinoIcons.bars),
          onPressed: () {},
        ),
        middle: const SizedBox(
          width: double.infinity,
          child: Text(
            'main page',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color(0xFF191E44),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              //height: 0.07,
              letterSpacing: 0.15,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              iconSize: 24,
              color: Colors.green.shade700,
              icon: const Icon(CupertinoIcons.search),
              onPressed: () {},
            ),
            const AdditionalOptionsMenu(),
            // PullDownButton(
            //
            //   itemBuilder: (context) => [
            //     PullDownMenuItem(
            //       title: 'Menu item',
            //       onTap: () {},
            //     ),
            //     PullDownMenuDivider(color: Color(0xFFFEFEFE),),
            //     PullDownMenuItem(
            //       title: 'Menu item 2',
            //       onTap: () {},
            //     ),
            //   ],
            //   buttonBuilder: (context, showMenu) => CupertinoButton(
            //     onPressed: showMenu,
            //     padding: EdgeInsets.zero,
            //     minSize: 24,
            //     child: Icon(CupertinoIcons.ellipsis_vertical, color: Colors.green[700]),
            //   ),
            // ),
          ],
        ),
      ),
      body: Column(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Color(0xFFE5E5E5)),
              ),
            ),
            child: SizedBox(
              height: 72,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: ListView.builder(
                    padding: const EdgeInsets.only(left: 12),
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return const TypeListItem();
                    }),
              ),
            ),
          ),
          Expanded(
            child: data != null
                ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: TrainingItem(
                          name: data[index].name ?? 'No name',
                          level: data[index].level ?? 'undefined level',
                          type: data[index].type ?? 'common',
                          totalTime: data[index].totalTime ?? 0,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TimetablePageManagement(
                                id: data[index].id,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
                : const Text('timer data is empty'),
          ),
        ],
      ),
    );
  }
}

class TypeListItem extends StatelessWidget {
  const TypeListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4, right: 4),
      padding: const EdgeInsets.all(8.0),
      width: 120,
      height: 40,
      decoration: ShapeDecoration(
        color: const Color(0xFF8089FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: const Text(
        'All',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFFFEFEFE),
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          //height: 0.09,
          //letterSpacing: 0.15,
        ),
      ),
    );
  }
}

class TrainingItem extends StatelessWidget {
  const TrainingItem(
      {super.key,
      required this.name,
      required this.level,
      required this.type,
      required this.totalTime});

  final String name;
  final String level;
  final String type;
  final int totalTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          //SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 225,
                height: 25,
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFF191E44),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    level,
                    style: const TextStyle(
                      color: Color(0xFF7F7F7F),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                      letterSpacing: 0.25,
                    ),
                  ),
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Center(
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFCCCCCC),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    type,
                    style: const TextStyle(
                      color: Color(0xFF7F7F7F),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                      letterSpacing: 0.25,
                    ),
                  ),
                  SizedBox(
                    width: 22,
                    height: 22,
                    child: Center(
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFCCCCCC),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '$totalTime',
                    style: const TextStyle(
                      color: Color(0xFF7F7F7F),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                      letterSpacing: 0.25,
                    ),
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
