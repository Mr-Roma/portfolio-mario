import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unique_portfolio/api/user_sheets_api.dart';
import 'package:unique_portfolio/controller/music_controller.dart';
import 'package:unique_portfolio/views/home/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UserSheetsApi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MusicProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Romario Portfolio',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeView(),
      ),
    );
  }
}
