import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/custom_app_bar.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
