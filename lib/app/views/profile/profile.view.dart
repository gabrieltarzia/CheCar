import 'package:car_review/app/controllers/profile.controller.dart';
import 'package:car_review/app/helpers/colors.helper.dart';
import 'package:car_review/app/helpers/theme.helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Editar perfil', style: ThemeHelper.titleStyle),
          centerTitle: true,
          backgroundColor: Colorshelper.primaryColor,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black))),
      body: _body(),
    );
  }

  _body() => Card();
}
