import 'dart:io';

import 'package:praktikum3/models_2/insertionSortAscending.dart';
import 'package:praktikum3/models_2/insertionSortDescending.dart';
import 'package:praktikum3/models_2/selectionSortAscending.dart';
import 'package:praktikum3/models_2/bubbleSortAscending.dart';
import 'package:praktikum3/models_2/bubbleSortAscendingFlag.dart';
import 'package:praktikum3/models_2/selectionSortDescending.dart';
import 'package:praktikum3/models_2/shellSortAscending.dart';

void main() {
  while (true) {
    print("\n===== Pilih Program =====");
    print("1. Insertion sort secara ascending");
    print("2. Selection sort secara ascending");
    print("3. Bubble sort secara ascending");
    print("4. Bubble sort secara ascending dengan flag");
    print("5. Shell sort secara ascending");
    print("6. Insertion sort secara descending");
    print("7. Selection sort secara descending");
    print("8. keluar");

    stdout.write("Masukkan pilihan (1 - 8): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
      print("\nInsertion sort secara ascending:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();
      print('Data Sebelum Pengurutan:');
      display_insertion_ascending(data);
      DateTime start = DateTime.now();
      insertionSortAscending<num>(data);
      Duration elapsedTime = DateTime.now().difference(start);
      print('Data Setelah Pengurutan:');
      display_insertion_ascending(data);
      print('Waktu: $elapsedTime');

    } else if (pilihan == 2) {
      print("\nSelection sort secara ascending:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();

      print('Data Sebelum Pengurutan:');
      display_selection_ascending(data);
      DateTime start = DateTime.now();
      selectionSortAscending(data);
      Duration elapsedTime = DateTime.now().difference(start);
      print('Data Setelah Pengurutan:');
      display_selection_ascending(data);
      print('Waktu: ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 3) {
      print("\nBubble sort secara ascending:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();
      print('Data Sebelum Pengurutan:');
      display_bubble(data);
      DateTime start = DateTime.now();
      bubbleSort(data);
      Duration elapsedTime = DateTime.now().difference(start);
      print('Data Setelah Pengurutan:');
      display_bubble(data);
      print('Waktu: ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 4) {
      print("\nBubble sort secara ascending dengan flag:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();
      print('Data Sebelum Pengurutan:');
      display_bubble_flag(data);
      DateTime start = DateTime.now();
      bubbleSortFlag(data);
      Duration elapsedTime = DateTime.now().difference(start);
      print('Data Setelah Pengurutan:');
      display_bubble_flag(data);
      print('Waktu: ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 5) {
      print("\nShell sort secara ascending:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();
      print('Data Sebelum Pengurutan:');
      display_shell(data);
      DateTime start = DateTime.now();
      shellSort(data);
      Duration elapsedTime = DateTime.now().difference(start);
      print('Data Setelah Pengurutan:');
      display_shell(data);
      print('Waktu: ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 6) {
      print("\nInsertion sort secara descending:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();
      print('Data Sebelum Pengurutan (Descending):');
      display_insertion_descending(data);

      DateTime startDesc = DateTime.now();
      insertionSortDescending<num>(data);
      Duration elapsedDesc = DateTime.now().difference(startDesc);
      print('Data Setelah Pengurutan Descending:');
      display_insertion_descending(data);
      print('Waktu Descending: $elapsedDesc');

    } else if (pilihan == 7) {
      print("\nSelection sort secara descending:\n");

      List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
      data.shuffle();
      print('Data Sebelum Pengurutan (Descending):');
      display_selection_descending(data);

      DateTime startDesc = DateTime.now();
      selectionSortDescending<num>(data);
      Duration elapsedDesc = DateTime.now().difference(startDesc);
      print('Data Setelah Pengurutan Descending:');
      display_selection_descending(data);
      print('Waktu Descending: ${elapsedDesc.inMilliseconds} ms');

    } else if (pilihan == 8) {
      print("Keluar dari program...");
      break;
    } else {
      print("Pilihan tidak valid!");
    }
  }
}
