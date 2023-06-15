import 'package:ecommerce_app/bloc/splashscreen/splashscreen_bloc.dart';
import 'package:ecommerce_app/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashscreenBloc>(
          create: (context) => SplashscreenBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        // darkTheme: ThemeData.dark(),
        // home: BottomAppbarwidget(),
        home: const SplashSCreen(),
      ),
    );
  }
}
