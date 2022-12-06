import 'package:car_review/app/helpers/colors.helper.dart';
import 'package:car_review/app/schedule/schedule.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _profileButton(),
        title: const Text(
          'Bem vindo Admin',
          style: TextStyle(color: Colors.black),
        ),
        actions: [_logOutButton()],
        backgroundColor: Colors.amber,
      ),
      body: _body(),
    );
  }

  _profileButton() => IconButton(
        icon: const Icon(Icons.person),
        color: Colors.black,
        onPressed: () {},
      );

  _logOutButton() => IconButton(
        icon: const Icon(
          Icons.logout,
          color: Colors.black,
        ),
        onPressed: () {
          Get.back();
        },
      );

  _body() => Column(
        children: [
          Container(
            height: 125,
            color:Colorshelper.secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 124,
                    height: 68,
                    color: Colors.amber,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.search,
                          size: 38,
                        ),
                        Text(
                          'Consultar veiculos avaliados',
                          style: TextStyle(
                              fontFamily: 'Times New Roman', fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: InkWell(
                    onTap: () {
                      print('Vistorias agendadas');
                    },
                    child: Container(
                      width: 124,
                      height: 68,
                      color: Colors.amber,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            size: 38,
                          ),
                          Text(
                            'Vistorias agendadas',
                            style: TextStyle(
                                fontFamily: 'Times New Roman', fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: InkWell(
                    onTap: () {
                      Get.to(ScheduleView());
                    },
                    child: Container(
                      width: 124,
                      height: 68,
                      color: Colors.amber,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.edit_calendar,
                            size: 38,
                          ),
                          Text(
                            'Agendar vistoria',
                            style: TextStyle(
                                fontFamily: 'Times New Roman', fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 124,
                    height: 68,
                    color: Colors.amber,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.car_repair,
                          size: 38,
                        ),
                        Text(
                          'Nova vistoria',
                          style: TextStyle(
                              fontFamily: 'Times New Roman', fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          /* Container(
            child: Center(
              child: ElevatedButton(
                child: Text('BACK'),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),*/
        ],
      );
}
