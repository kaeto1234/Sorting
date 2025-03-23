void selectionSortDescending<T extends Comparable<T>>(List<T> arr) {
  T temp;
  for (int i = arr.length - 1; i >= 0; i--) {
    int min = i;
    for (int j = i - 1; j >= 0; j--) {
      if (arr[j].compareTo(arr[min]) < 0) min = j;
    }
    temp = arr[i];
    arr[i] = arr[min];
    arr[min] = temp;
  }
}

void display_selection_descending<T>(List<T> data) {
  for (T objek in data) {
    print('$objek ');
  }
  print('');
}