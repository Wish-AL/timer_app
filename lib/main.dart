import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:timer_app/main_page/cubit/main_page_cubit.dart';
import 'package:timer_app/timer_page/view/timer_page.dart';
import 'package:timer_app/timetable/view/editing_screen.dart';
import 'package:timer_app/timetable/view/timetable_screen.dart';

import 'data/timer_data_local_db_controller.dart';
import 'data/timer_repository.dart';
import 'main_page/view/main_screen.dart';

void main() async {
  //await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (BuildContext context) => TimerRepository(dbController: LocalDbController()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MainPageCubit>(
            create: (BuildContext context) => MainPageCubit(
              timerRepository: context.read(), //need TimerRepository()
            ),
          )
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const TimetablePageManagement(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(title),
      ),
      body: const Center(

        child:
            Text(
              'Start make a timer',
            ),
         ),
      );
  }
}
