import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:magdsoft_flutter_structure/business_logic/signcubit/signincubit.dart';
import 'package:magdsoft_flutter_structure/business_logic/signcubit/signinstates.dart';

import '../../styles/colors.dart';
import '../../widget/defaultbutton.dart';
import '../../widget/text_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        if (state is SuccessSignInState) {
          Navigator.pushNamed(context, '/result');
        }
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Primarycolor,
          body: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Center(
                    child: SizedBox(
                      height: size.height * 0.23,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    child: MaterialButton(
                      color: Colors.white,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.white)),
                      onPressed: () {},
                      child: const Text(
                        'عربي',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff005DA3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                height: size.height,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.17,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 30),
                            child: Text_field(
                                controll: emailController,
                                hinttext: translate('email')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 40),
                            child: Text_field(
                                controll: passwordController,
                                hinttext: 'Password'.tr(),
                                suffix: Icon(Icons.remove_red_eye_outlined)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Expanded(
                          flex: 3,
                          child: defaultbutton(
                            text: 'REGISTER'.tr(),
                            function: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 3,
                          child: defaultbutton(
                            text: translate('LOGIN'),
                            function: () {
                              BlocProvider.of<SignInCubit>(context).login(
                                  emailController.text,
                                  passwordController.text);
                            },
                          ),
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

void showDemoActionSheet(
    {required BuildContext context, required Widget child}) {
  showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) => child).then((String? value) {
    if (value != null) changeLocale(context, value);
  });
}

void _onActionSheetPress(BuildContext context) {
  showDemoActionSheet(
    context: context,
    child: CupertinoActionSheet(
      title: Text(translate('language.selection.title')),
      message: Text(translate('language.selection.message')),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text(translate('language.name.en')),
          onPressed: () => Navigator.pop(context, 'en_US'),
        ),
        CupertinoActionSheetAction(
          child: Text(translate('language.name.ar')),
          onPressed: () => Navigator.pop(context, 'ar'),
        ),
      ],
    ),
  );
}
