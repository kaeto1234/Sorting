import 'dart:math';

List<int> generateRandomList(int size) {
  var random = Random();
  return List.generate(size, (_) => random.nextInt(1000000));
}

// Insertion Sort
void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

// Selection Sort
void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
}

// Bubble Sort
void bubbleSort(List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

// Shell Sort
void shellSort(List<int> arr) {
  int n = arr.length;
  for (int gap = n ~/ 2; gap > 0; gap ~/= 2) {
    for (int i = gap; i < n; i++) {
      int temp = arr[i];
      int j;
      for (j = i; j >= gap && arr[j - gap] > temp; j -= gap) {
        arr[j] = arr[j - gap];
      }
      arr[j] = temp;
    }
  }
}

// Quick Sort
void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);
    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;
  for (int j = low; j < high; j++) {
    if (arr[j] <= pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;
  return i + 1;
}

// Merge Sort
void mergeSort(List<int> arr, int left, int right) {
  if (left < right) {
    int mid = (left + right) ~/ 2;
    mergeSort(arr, left, mid);
    mergeSort(arr, mid + 1, right);
    merge(arr, left, mid, right);
  }
}

void merge(List<int> arr, int left, int mid, int right) {
  List<int> leftArray = arr.sublist(left, mid + 1);
  List<int> rightArray = arr.sublist(mid + 1, right + 1);
  int i = 0, j = 0, k = left;
  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] <= rightArray[j]) {
      arr[k++] = leftArray[i++];
    } else {
      arr[k++] = rightArray[j++];
    }
  }
  while (i < leftArray.length) arr[k++] = leftArray[i++];
  while (j < rightArray.length) arr[k++] = rightArray[j++];
}