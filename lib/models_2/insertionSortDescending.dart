void insertionSortDescending<T extends Comparable<T>>(List<T> arr) {
  for (int i = arr.length - 1; i >= 0; i--) {
    for (int j = i + 1, k = i; j < arr.length; j++) {
      if (arr[j].compareTo(arr[k]) < 0) {
        break;
      } else {
        T temp = arr[k];
        arr[k] = arr[j];
        arr[j] = temp;
        k = j;
      }
    }
  }
}

void display_insertion_descending<T>(List<T> data) {
  for (T obj in data) {
    print('$obj ');
  }
  print('');
}
