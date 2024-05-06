// @dart=2.12

// ignore_for_file: non_constant_identifier_names, deprecated_member_use, duplicate_ignore

import 'package:easy_car/Bloc/home_block.dart';
import 'package:easy_car/Bloc/home_state.dart';
import 'package:easy_car/Screens/Client/Auth/Login/ClientLoginScreen.dart';
import 'package:easy_car/Services/Global/AppText/AppText.dart';
import 'package:easy_car/Services/Global/Functions/AppFunction.dart';
import 'package:easy_car/Style/Colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class ClientOrMangerScreen extends StatelessWidget {
  const ClientOrMangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, CaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return Scaffold(
            body: SafeArea(
                bottom: false,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      _buildCard(screenWidth, screenHeight, AppText.mangerAr,
                          Icons.supervisor_account,(){navigateTo(context,const ClientLoginScreen() );}),
                      SizedBox(
                        height: screenHeight > 700 ? 50 : 30,
                      ),
                      _buildCard(screenWidth, screenHeight, AppText.clientAr,
                          Icons.person,(){navigateTo(context,const ClientLoginScreen() );}),
                    ]
                    ))));
      },
    );
  }

  Widget _buildCard(screenWidth, screenHeight, cardTextValue, cardIcon,onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: screenHeight > 700 ? 150 : 100,
        width: screenWidth > 700 ? 250 : 300,
        decoration: BoxDecoration(
          color: AppColors.button,
          borderRadius: BorderRadius.circular(50), // Make it a circle
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              // Wrap content horizontally
              children: [
                Icon(
                  cardIcon,
                  size: screenWidth > 400 ? 50 : 45,
                  color: AppColors.whiteText,
                ),
                // Adjust icon size
                const SizedBox(width: 20.0),
                Text(
                  cardTextValue,
                  style: TextStyle(
                      color: AppColors.whiteText,
                      fontSize: screenWidth > 700 ? 50 : 45), // Adjust font size
                ),
              ]),
        ),
      ),
    );
  }
}
