import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditingScreen extends StatelessWidget {
  const EditingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        border: const Border(bottom: BorderSide.none),
        backgroundColor: const Color(0xFFFEFEFE).withOpacity(1),
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
        trailing: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              color: Color(0xFF6CB75A),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1,
              letterSpacing: 0.15,
            ),
          ),
          onPressed: () {},
          child: const Text('Save'),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 2, color: Color(0xFFE5E5E5)),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 44,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 361,
                height: 174,
                child: SizedBox(
                  width: double.infinity,
                  height: 96,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NumberInputItem(
                        text: 'Hours',
                      ),
                      TwoDotsDivider(),
                      NumberInputItem(
                        text: 'Minutes',
                      ),
                      TwoDotsDivider(),
                      NumberInputItem(
                        text: 'Seconds',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 1),
            InputFrame(),
            CanselButton(),
          ],
        ),
      ),
    );
  }
}

class InputFrame extends StatelessWidget {
  const InputFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 361,
        height: 182,
        decoration: const BoxDecoration(
          color: Color(0xFFF7F9FF),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border(
            left: BorderSide(width: 1, color: Color(0xFFCCD0FF)),
            top: BorderSide(width: 1, color: Color(0xFFCCD0FF)),
            right: BorderSide(width: 1, color: Color(0xFFCCD0FF)),
            bottom: BorderSide(width: 1, color: Color(0xFFCCD0FF)),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 361,
              height: 60,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: Color(0xFF191E44),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: 'Workout',
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: 'Workout',
                          hintStyle: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1,
                            letterSpacing: 0.02,
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.02,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 361,
              height: 60,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: Color(0xFF191E44),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: 'none',
                          hintStyle: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 1,
                            letterSpacing: 0.02,
                          ),
                        ),
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.02,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 361,
              height: 60,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Tune',
                        style: TextStyle(
                          color: Color(0xFF191E44),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isCollapsed: true,
                          hintText: 'Xylophone',
                        ),
                        style: TextStyle(
                          color: Color(0xFF7F7F7F),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.02,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberInputItem extends StatelessWidget {
  const NumberInputItem({super.key, required this.text, this.initNumber = 0});

  final String text;
  final int initNumber;

  @override
  Widget build(BuildContext context) {
    String inputText = '';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 88.33,
          height: 72,
          padding: const EdgeInsets.only(left: 16, top: 9, right: 16),
          decoration: ShapeDecoration(
            color: const Color(0xFFF7F9FF),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFCCCCCC)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Center(
            child: TextField(
              // onChanged: (text) {
              //   if (text.isNotEmpty) {
              //     final parsedText = int.tryParse(text);
              //     if (parsedText != null) {
              //       inputText = parsedText.toString().padLeft(2, '0');
              //
              //     }
              //   }
              // },
              // onEditingComplete: (){
              //   print(inputText);
              // },
              controller: TextEditingController(text: inputText),
              decoration: InputDecoration(
                counter: const SizedBox(),
                hintText: initNumber.toString().padLeft(2, '0'),
                border: InputBorder.none,
                isCollapsed: true,
              ),
              style: const TextStyle(
                color: Color(0xFF7F7F7F),
                fontSize: 45,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
              maxLength: 2,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              showCursor: true,
              textAlign: TextAlign.right,
              textAlignVertical: TextAlignVertical.center,
              //keyboardType: TextInputType.number,
              //autofocus: true,
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        SizedBox(
          width: 88.33,
          height: 16,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
              color: Color(0xFF191919),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 1,
              letterSpacing: 0.40,
            ),
          )),
        )
      ],
    );
  }
}

class CanselButton extends StatelessWidget {
  const CanselButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
          child: Container(
            width: 361,
            height: 50,
            decoration: ShapeDecoration(
              color: const Color(0x66FBE1D1),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFD1604E)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Center(
              child: Text(
                'Cancel changes',
                style: TextStyle(
                  color: Color(0xFFB3261E),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.09,
                  letterSpacing: 0.15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TwoDotsDivider extends StatelessWidget {
  const TwoDotsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 23),
      child: SizedBox(
        width: 24,
        height: 72,
        child: Text(
          ':',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF191E44),
            fontSize: 57,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
      ),
    );
  }
}
