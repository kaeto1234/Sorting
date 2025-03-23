import 'dart:io';
import 'dart:math';

import 'package:praktikum3/models_3/quickSortAscending.dart';
import 'package:praktikum3/models_3/quickSortDescending.dart';
import 'package:praktikum3/models_3/mergeSortAscending.dart';
import 'package:praktikum3/models_3/sorting.dart';

void main() {
  while (true) {
    print("\n===== Pilih Program =====");
    print("1. Quick sort secara ascending");
    print("2. Merge sort secara ascending");
    print("3. Quick sort secara descending");
    print("4. Sorting");
    print("5. keluar");

    stdout.write("Masukkan pilihan (1 - 5): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
      print("\nQuick sort secara ascending:\n");
      List<num> data =
          List.generate(10, (index) => Random().nextInt(100).toDouble());
      printDataQuickAscending(data);
      DateTime startTime = DateTime.now();
      quickSortAscending(data, 0, data.length - 1);
      Duration elapsedTime = DateTime.now().difference(startTime);
      printDataQuickAscending(data);
      print('Waktu ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 2) {
      print("\nMerge sort secara ascending:\n");
      List<num> data =
          List.generate(10, (index) => Random().nextInt(100).toDouble());
      printDataMerge(data);
      DateTime startTime = DateTime.now();
      mergeSortAscending(data, 0, data.length - 1);
      Duration elapsedTime = DateTime.now().difference(startTime);
      printDataMerge(data);
      print('\nwaktu : ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 3) {
      print("\nQuick sort secara descending:\n");
      List<num> data =
          List.generate(10, (index) => Random().nextInt(100).toDouble());
      print('Data Sebelum Pengurutan (Descending):');
      printDataQuick(data);
      DateTime startTime = DateTime.now();
      quickSortDescending(data, 0, data.length - 1);
      Duration elapsedTime = DateTime.now().difference(startTime);
      print('Data Setelah Pengurutan Descending:');
      printDataQuick(data);
      print('Waktu ${elapsedTime.inMilliseconds} ms');

    } else if (pilihan == 4) {
      print("\nSorting:\n");

      List<int> sizes = [
        50000,
        100000,
        150000,
        200000,
        250000,
        300000,
        350000,
        400000,
        450000,
        500000
      ];
      Map<String, List<double>> results = {
        'Insertion': [],
        'Selection': [],
        'Bubble': [],
        'Shell': [],
        'Quick': [],
        'Merge': []
      };

      for (var size in sizes) {
        print('Processing size: $size');
        List<int> data = generateRandomList(size);

        for (var method in results.keys) {
          List<int> copy = List.from(data);
          Stopwatch stopwatch = Stopwatch()..start();
          switch (method) {
            case 'Insertion':
              insertionSort(copy);
              break;
            case 'Selection':
              selectionSort(copy);
              break;
            case 'Bubble':
              bubbleSort(copy);
              break;
            case 'Shell':
              shellSort(copy);
              break;
            case 'Quick':
              quickSort(copy, 0, copy.length - 1);
              break;
            case 'Merge':
              mergeSort(copy, 0, copy.length - 1);
              break;
          }
          stopwatch.stop();
          results[method]
              ?.add(stopwatch.elapsedMilliseconds / 1000); // Konversi ke detik
        }
      }

      print('\nHasil Perbandingan Waktu (dalam detik):');
      print(
          'Jumlah Data | Insertion | Selection | Bubble | Shell | Quick | Merge');
      for (int i = 0; i < sizes.length; i++) {
        print(
            '${sizes[i]} | ${results['Insertion']![i]} | ${results['Selection']![i]} | ${results['Bubble']![i]} | ${results['Shell']![i]} | ${results['Quick']![i]} | ${results['Merge']![i]}');
      }

    } else if (pilihan == 5) {
      print("Keluar dari program...");
      break;
    } else {
      print("Pilihan tidak valid!");
    }
  }
}
