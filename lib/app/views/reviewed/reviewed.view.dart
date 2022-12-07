import 'package:car_review/app/helpers/colors.helper.dart';
import 'package:car_review/app/helpers/theme.helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewedView extends StatelessWidget {
  const ReviewedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Veiculos já revisados',
          style: ThemeHelper.titleStyle,
        ),
        centerTitle: true,
        backgroundColor: Colorshelper.primaryColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: _body(),
    );
  }

  _body() => Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [_carCard(true), _carCard(false)],
          ),
        ),
      );

  _carCard(bool approved) => Card(
        color: Colorshelper.secondaryColor,
        child: SizedBox(
          height: 128,
          child: ListTile(
            title: const Text(
              'Celta vermelho - HFD423',
              style: TextStyle(color: Colorshelper.primaryColor),
            ),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _approvedCheck(approved),
              if (!approved)
                const Text(
                  'Danos graves ao chassi',
                  style: TextStyle(color: Colors.grey),
                )
            ]),
            trailing: Card(
              child: SizedBox(
                width: 124,
                child: Column(
                  children: const [
                    Text(
                      'Avaliador',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Pedro'),
                  ],
                ),
              ),
            ),
            leading: const SizedBox(
                width: 184,
                child: ListTile(
                  title: Card(child: Center(child: Text('João'))),
                  subtitle: Card(child: Center(child: Text('457224524'))),
                )),
          ),
        ),
      );

  _approvedCheck(bool value) {
    switch (value) {
      case true:
        return const Text(
          'Aprovado',
          style: TextStyle(color: Colors.green),
        );

      case false:
        return const Text(
          'Reprovado',
          style: TextStyle(color: Colors.red),
        );

      default:
        return const Text('Aguardando Valor');
    }
  }
}
