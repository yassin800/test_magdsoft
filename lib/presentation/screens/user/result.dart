import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/business_logic/signcubit/signincubit.dart';
import 'package:magdsoft_flutter_structure/business_logic/signcubit/signinstates.dart';

import '../../styles/colors.dart';
import '../../widget/defaultbutton.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is SuccessSignInState) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Primarycolor,
                centerTitle: true,
                title: const Text(
                  'User Data',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              body: ListView(
                children: [
                  Row(
                    children: [Text('email : '), Text(state.account.email)],
                  ),
                  Row(
                    children: [
                      const Text('password'),
                      Text(state.account.password)
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 3,
                        child: defaultbutton(
                            text: 'Logout',
                            function: () {},
                            background: Colors.red),
                      ),
                      Expanded(flex: 3, child: SizedBox())
                    ],
                  )
                ],
              ),
            ),
          );
        } else {
          return Container(
            child: SizedBox(),
          );
        }
      },
    );
  }
}
