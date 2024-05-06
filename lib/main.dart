// @dart=2.12
// ignore_for_file: import_of_legacy_library_into_null_safe


import 'package:easy_car/Screens/Client/Auth/Login/ClientLoginScreen.dart';
import 'package:easy_car/Screens/ClientOrMangerScreen/ClientOrMangerScreen.dart';
import 'package:easy_car/Style/Colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Bloc/home_block.dart';
import 'Bloc/home_state.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => HomeCubit()),
        ],
        child: BlocConsumer<HomeCubit, CaseState>(
            listener: (context, state) {},
            builder: (context, state) {
              return   Directionality(
                textDirection: TextDirection.rtl,
                child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: AppColors.lightTheme( ),
                    locale: Locale('ar'), // Optional: Set the locale for RTL languages (e.g., Arabic)

                    home: const ClientLoginScreen()
                ),
              );
            }));
  }
}
