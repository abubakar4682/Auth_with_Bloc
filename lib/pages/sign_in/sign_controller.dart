import 'package:appbloc/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignController{
  final BuildContext context;
  const SignController({
    required this.context
});
  void handleSignIn(String type){
    try{
      if(type=='email'){
        final state =context.read<SignInBloc>().state;
        String emailaddres=state.email;
        String password=state.password;
        if(emailaddres.isEmpty){

        }
        if(password.isEmpty){

        }
      }


    }catch(e){

    }


  }
}