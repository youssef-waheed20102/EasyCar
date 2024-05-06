// @dart=2.12



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<CaseState> {
  HomeCubit() : super(CaseInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  //////////////////////Client Login Screen////////////////////////
  TextEditingController  clientLoginUserNameController = TextEditingController();
  TextEditingController  clientLoginPasswordController = TextEditingController();

  //////////////////////Client Register Screen////////////////////////
  TextEditingController  clientRegisterNameController = TextEditingController();
  TextEditingController  clientRegisterPhoneController = TextEditingController();
  TextEditingController  clientRegisterSSNController = TextEditingController();
  TextEditingController  clientRegisterUserNameController = TextEditingController();
  TextEditingController  clientRegisterPasswordController = TextEditingController();

}