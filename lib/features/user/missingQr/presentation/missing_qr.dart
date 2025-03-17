import 'package:flutter/material.dart';
import 'package:pap_copy/shared/widgets/generic_alert.dart';

class MissingQr extends StatefulWidget {
  const MissingQr({super.key});

  @override
  State<MissingQr> createState() => _MissingQrState();
}

class _MissingQrState extends State<MissingQr> {
  final List<String> blocks = ['Bloco E', 'Bloco B', 'Bloco D'];
  final List<String> rooms = ['0.04', '0.05', '0.06'];
  final List<String> machines = [
    'Computador 1',
    'Computador 2',
    'Computador 3',
  ];
  String? selectedBlock;
  String? selectedRoom;
  String? selectedMachine;

  List<String> generateDynamicRooms(List<String> rooms, String? selectedBlock) {
    if (selectedBlock == null || selectedBlock.isEmpty) {
      return [];
    }

    String blockLetter = selectedBlock.split(' ')[1];
    return rooms.map((room) {
      return "Sala $blockLetter$room";
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Escolha a localização",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            DropdownMenu(
              width: double.infinity,
              initialSelection: selectedBlock,
              dropdownMenuEntries:
                  blocks.map((block) {
                    return DropdownMenuEntry(value: block, label: block);
                  }).toList(),
              onSelected: (value) {
                setState(() {
                  selectedBlock = value!;
                });
              },
              hintText: "Escolha um bloco",
            ),
            SizedBox(height: 30),
            DropdownMenu(
              enabled: selectedBlock != null && selectedBlock!.isNotEmpty,
              width: double.infinity,
              initialSelection: selectedRoom,
              dropdownMenuEntries:
                  generateDynamicRooms(rooms, selectedBlock).map((room) {
                    return DropdownMenuEntry(value: room, label: room);
                  }).toList(),
              onSelected: (value) {
                setState(() {
                  selectedRoom = value!;
                });
              },
              hintText: "Escolha uma Sala",
            ),
            SizedBox(height: 30),
            Text(
              "Escolha a máquina",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            DropdownMenu(
              enabled: selectedRoom != null && selectedRoom!.isNotEmpty,
              width: double.infinity,
              initialSelection: selectedMachine,
              dropdownMenuEntries:
                  machines.map((machine) {
                    return DropdownMenuEntry(value: machine, label: machine);
                  }).toList(),
              onSelected: (value) {
                setState(() {
                  selectedMachine = value!;
                });
              },
              hintText: "Escolha uma máquina",
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  GenericAlert.showAlert(
                    context,
                    "Falta de Qr foi avisada com sucesso.",
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
                child: Text("Enviar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
