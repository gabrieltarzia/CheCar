import 'package:car_review/app/helpers/colors.helper.dart';
import 'package:car_review/app/models/schedule.model.dart';
import 'package:car_review/app/schedule/schedule.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/theme.helper.dart';

class ScheduleView extends GetView<ScheduleController> {
  ScheduleView({Key? key}) : super(key: key);

  final controller = Get.put(ScheduleController());

  final ownerNameController = TextEditingController();
  final ownerDocumentController = TextEditingController();
  final ownerPhoneController = TextEditingController();

  final vehicleBrandController = TextEditingController();
  final vehicleModelController = TextEditingController();
  final vehicleColorController = TextEditingController();
  final vehiclePlateController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _scheduleTab(context),
      );
  _scheduleTab(BuildContext context) => Container(
        color: Colors.black87,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colorshelper.primaryColor,
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(18))),
            height: 600,
            width: 900,
            child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(height: 18),
                const Text('Agendar nova vistoria',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontFamily: 'Times New Roman')),
                const Divider(),
                _ownerTab(),
                _vehicleTab(),
                const Divider(),
                SizedBox(
                  height: 48,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 254),
                    child: ElevatedButton(
                        onPressed: () {
                          _datePicker(context);
                        },
                        child: Obx(() =>
                            _dateButton(controller.newSchedule.date.value))),
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 62,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.newSchedule = Schedule();
                        Get.back();
                      },
                      child: const Text(
                        'AGENDAR',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Times new Roman',
                            fontSize: 24),
                      )),
                ),
                const SizedBox(height: 18)
              ],
            ),
          ),
        ),
      );

  _dateButton(String value) {
    if (value.isEmpty) {
      return const Text(
        'Selecione uma data',
        style: TextStyle(color: Colorshelper.secondaryColor, fontSize: 18),
      );
    } else {
      return Text(
        'Agendado para: $value',
        style: TextStyle(color: Colorshelper.secondaryColor, fontSize: 18),
      );
    }
  }

  _datePicker(BuildContext context) => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030),
      ).then((value) => controller.newSchedule.date.value = value.toString());

/*
  _datePicker() => Padding(
      padding: const EdgeInsets.all(8),
      child: DatePickerDialog(
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030),
        helpText: 'Data da revisão',
        cancelText: 'Cancelar',
        errorFormatText: 'Data inválida',
        confirmText: 'Agendar',
        fieldHintText: 'Insira uma data para o agendamento',
        fieldLabelText: 'Insira uma data válida',
        errorInvalidText: 'Data inválida',
        initialCalendarMode: DatePickerMode.day,
        initialEntryMode: DatePickerEntryMode.input,
        keyboardType: TextInputType.datetime,
        
      ));
*/
  _ownerTab() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: Container(
            color: Colorshelper.secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Text(
                    'Proprietário',
                    style: TextStyle(color: Colors.amber, fontSize: 28),
                  ),
                  const Text(
                    'Nome',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        controller: ownerNameController,
                        style: const TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                  const Text(
                    'Documento',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: ownerDocumentController,
                        style: const TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                  const Text(
                    'Telefone para contato',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: ownerPhoneController,
                        style: TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                ],
              ),
            ),
          ),
        ),
      );

  _vehicleTab() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: Container(
            color: Colorshelper.secondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Text(
                    'Veiculo',
                    style: TextStyle(color: Colors.amber, fontSize: 28),
                  ),
                  const Text(
                    'Marca',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                         keyboardType: TextInputType.name,
                        controller: vehicleBrandController,
                        style: const TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                  const Text(
                    'Modelo',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                         keyboardType: TextInputType.name,
                        controller: vehicleModelController,
                        style: const TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                  const Text(
                    'Cor',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                         keyboardType: TextInputType.name,
                        controller: vehicleColorController,
                        style: const TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                  const Text(
                    'Placa',
                    style: ThemeHelper.inputFieldTitleTheme,
                  ),
                  SizedBox(
                      height: 28,
                      width: 542,
                      child: TextField(
                         keyboardType: TextInputType.text,
                        controller: vehiclePlateController,
                        style: const TextStyle(color: Colors.white),
                        decoration: ThemeHelper.inputFieldTheme,
                      )),
                ],
              ),
            ),
          ),
        ),
      );
}
