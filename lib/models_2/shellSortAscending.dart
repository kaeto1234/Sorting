void shellSort<T extends Comparable<T>>(List<T> arr) {
  int i, jarak;
  bool didSwap = true;
  T temp;
  jarak = arr.length;
  while (jarak > 1) {
    jarak = (jarak / 2).floor();
    didSwap = true;
    while (didSwap) {
      didSwap = false;
      i = 0;
      while (i < (arr.length - jarak)) {
        if (arr[i].compareTo(arr[i + jarak]) > 0) {
          temp = arr[i];
          arr[i] = arr[i + jarak];
          arr[i + jarak] = temp;
          didSwap = true;
        }
        i++;
      }
    }
  }
}

void display_shell<T>(List<T> data) {
  for (T objek in data) {
    print('$objek ');
  }
  print('');
}
