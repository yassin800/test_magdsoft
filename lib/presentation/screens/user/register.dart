import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/business_logic/registercubit/registercubit.dart';
import 'package:magdsoft_flutter_structure/business_logic/registercubit/registerstates.dart';

import '../../styles/colors.dart';
import '../../widget/defaultbutton.dart';
import '../../widget/text_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final _formKey1 = GlobalKey<FormState>();
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          // TODO: implement listener
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
                Center(
                  child: SizedBox(
                    height: size.height * 0.23,
                    child: Image.asset('assets/images/logo.png'),
                  ),
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
                        key: _formKey1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 30),
                              child: Text_field(
                                controll: nameController,
                                hinttext: 'Full Name'.tr(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 30),
                              child: Text_field(
                                controll: emailController,
                                hinttext: 'email'.tr(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 30),
                              child: Text_field(
                                controll: phoneController,
                                hinttext: 'Phone'.tr(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 30),
                              child: Text_field(
                                controll: passwordController,
                                hinttext: 'Password'.tr(),
                                suffix: const Icon(
                                  Icons.remove_red_eye_outlined,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 40),
                              child: Text_field(
                                controll: confirmpassController,
                                hinttext: 'Confirm Password'.tr(),
                                suffix:
                                    const Icon(Icons.remove_red_eye_outlined),
                              ),
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
                                if (state is SuccessRegisterState) {
                                  Navigator.pushNamed(context, '/result');
                                }
                              },
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 3,
                            child: defaultbutton(
                              text: 'LOGIN'.tr(),
                              function: () {},
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
      ),
    );
  }
}
