import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            'timetable name',
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
              color: Colors.red.shade500,
              icon: const Icon(CupertinoIcons.delete),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 24,
              color: Colors.green.shade700,
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Color(0xFFE5E5E5)),
              ),
            ),
            child: SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '6.30',
                      style: TextStyle(
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
                    const Text(
                      '5 intervals',
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                        letterSpacing: 0.25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return const TimetableItem();
                },
              ),
            ),
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 2, color: Color(0xFFE5E5E5)),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 107,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 31,
                ),
                child: CupertinoButton(
                  color: const Color(0xFF8089FF),
                  borderRadius: BorderRadius.circular(10),
                  onPressed: () {},
                  child: const Text(
                    'START',
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimetableItem extends StatelessWidget {
  const TimetableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: 96,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: ShapeDecoration(
          color: const Color(0xFFF7F9FF),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFCCD0FF)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              //fit: FlexFit.tight,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 180,
                  height: 48,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Time to train',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            //height: 1,
                            letterSpacing: 0.02,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Keep the rhythm',
                          style: TextStyle(
                            color: Color(0xFF3366FF),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            //height: 1,
                            letterSpacing: 0.04,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 48,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '00:05:00',
                    style: TextStyle(
                      color: Color(0xFF191E44),
                      fontSize: 34,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1,
                      letterSpacing: 0.09,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
