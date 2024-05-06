// @dart=2.12

// ignore_for_file: non_constant_identifier_names, deprecated_member_use, duplicate_ignore

import 'package:easy_car/Bloc/home_block.dart';
import 'package:easy_car/Bloc/home_state.dart';
import 'package:easy_car/Components/Widgets/AppButton.dart';
import 'package:easy_car/Components/Widgets/AppText.dart';
import 'package:easy_car/Components/Widgets/AppTextForm.dart';
import 'package:easy_car/Screens/Client/Auth/Register/ClientRegisterScreen.dart';
import 'package:easy_car/Screens/Client/HomeLayout/ClientHomeLayoutScreen.dart';
import 'package:easy_car/Services/Global/AppText/AppText.dart';
import 'package:easy_car/Services/Global/Functions/AppFunction.dart';
import 'package:easy_car/Style/Colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class ClientLoginScreen extends StatelessWidget {
  const ClientLoginScreen({Key? key}) : super(key: key);

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
              title: Text(AppText.LoginPage),
            ),
            body: SafeArea(
                bottom: false,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ResponsiveText(
                            text: AppText.userName,
                            maxFontSize: screenWidth * 0.3,
                            minFontSize: screenWidth * 0.01,
                            textFontWeight: FontWeight.bold,
                            textColor: AppColors.primary),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        textForm(
                            cubit.clientLoginUserNameController, AppText.userName),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        ResponsiveText(
                            text: AppText.password,
                            maxFontSize: screenWidth * 0.3,
                            minFontSize: screenWidth * 0.01,
                            textFontWeight: FontWeight.bold,
                            textColor: AppColors.primary),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        textForm(
                            cubit.clientLoginPasswordController, AppText.password),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: InkWell(
                              onTap: () {navigateTo(context, ClientRegisterScreen());},
                              child: ResponsiveText(
                                text: AppText.notHaveAccount,
                                maxFontSize: screenWidth * 0.1,
                                minFontSize: screenWidth * 0.01,
                                textFontWeight: FontWeight.bold,
                                textColor: AppColors.link,
                                textDecoration: TextDecoration.underline,
                              ),
                            )),
                        SizedBox(
                          height: screenHeight * 0.07,
                        ),
                        Center(
                          child: ResponsiveButton(
                            text: AppText.login,
                            onPressed: () {
                              navigateTo(context, const ClientHomeLayoutScreen());
                            },
                            style: TextStyle(
                                fontSize: screenWidth * 0.06,
                                color: AppColors.whiteText,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                ))));
      },
    );
  }
}
