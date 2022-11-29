import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() => Column(
        children: [
          Container(
            height: 125,
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 124,
                    height: 68,
                    color: Colors.amber,
                    child: Center(
                        child: Text(
                      'Consultar veiculos avaliados',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', fontSize: 16),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 124,
                    height: 68,
                    color: Colors.amber,
                    child: Center(
                        child: Text(
                      'Vistorias agendadas',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', fontSize: 16),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 124,
                    height: 68,
                    color: Colors.amber,
                    child: Center(
                        child: Text(
                      'Agendar vistoria',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', fontSize: 16),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: 124,
                    height: 68,
                    color: Colors.amber,
                    child: Center(
                        child: Text(
                      'Nova vistoria',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', fontSize: 16),
                    )),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Center(
              child: ElevatedButton(
                child: Text('BACK'),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),
        ],
      );
}
