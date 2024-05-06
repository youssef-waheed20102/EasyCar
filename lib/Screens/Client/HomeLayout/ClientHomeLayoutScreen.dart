// @dart=2.12

// ignore_for_file: non_constant_identifier_names, deprecated_member_use, duplicate_ignore

import 'package:easy_car/Bloc/home_block.dart';
import 'package:easy_car/Bloc/home_state.dart';
import 'package:easy_car/Components/Widgets/AppButton.dart';
import 'package:easy_car/Components/Widgets/AppText.dart';
import 'package:easy_car/Components/Widgets/AppTextForm.dart';
import 'package:easy_car/Services/Global/AppText/AppText.dart';
import 'package:easy_car/Services/Global/Functions/AppFunction.dart';
import 'package:easy_car/Style/Colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class ClientHomeLayoutScreen extends StatelessWidget {
  const ClientHomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, CaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return Scaffold(
            appBar: AppBar(
              title: Text(AppText.homeScreen),
            ),
            body: SafeArea(
                bottom: false,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              // navigateTo(context, widget)
                            },
                            child: carCard(context, 'assets/images/jampoCar.jpg',
                                AppText.dbaba, screenHeight, screenWidth),
                          ),
                          SizedBox(height:  screenHeight * 0.02,),
                          carCard(context, 'assets/images/freezCar.png',
                              AppText.tlaga, screenHeight, screenWidth),

                        ],
                      ),
                    );
                  }),
                ))));
      },
    );
  }

  Widget carCard(context, image, txt, screenHeight, screenWidth) {
    return Container(

      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              image,
              height: screenHeight * 0.2,
              width:double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          ResponsiveText(text: txt,textColor: AppColors.whiteText,maxFontSize:screenWidth * 0.09 ,minFontSize: screenWidth * 0.01,textFontWeight: FontWeight.bold),

        ],
      ),
    );
  }
}
