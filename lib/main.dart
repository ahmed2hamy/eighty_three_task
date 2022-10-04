import 'package:eighty_three_task/constants/constants.dart';
import 'package:eighty_three_task/features/home/presentation/pages/home_screen.dart';
import 'package:eighty_three_task/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: MaterialApp(
        title: Strings.appName,
        theme: kAppThemeData,
        home: const HomeScreen(),
      ),
    );
  }
}
