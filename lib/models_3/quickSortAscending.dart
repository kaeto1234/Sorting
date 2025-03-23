void quickSortAscending<T extends Comparable<T>>(List<T> arr, int p, int r) {
  int q;
  if (p < r) {
    q = partitionAscending(arr, p, r);
    quickSortAscending(arr, p, q);
    quickSortAscending(arr, q + 1, r);
  }
}

int partitionAscending<T extends Comparable<T>>(List<T> arr, int p, int r) {
  int i, j;
  T pivot, temp;
  pivot = arr[p];
  i = p;
  j = r;
  while (i <= j) {
    while (pivot.compareTo(arr[j]) < 0) j--;
    while (pivot.compareTo(arr[i]) > 0) i++;
    if (i < j) {
      temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      j--;
      i++;
    } else {
      return j;
    }
  }
  return j;
}

void printDataQuickAscending<T>(List<T> data) {
  for (T objek in data) {
    print('$objek ');
  }
  print('');
}
