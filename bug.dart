```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (/* some condition */ false) {
      throw Exception('Something went wrong');
    }
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('TimeoutException caught: ${e.message}');
    // Handle TimeoutException specifically
  } on Exception catch (e) {
    print('Exception caught: ${e.message}');
    // Handle other exceptions
  } catch (e) {
    print('Unexpected error: ${e.toString()}');
    // Handle unexpected errors
  } finally {
    print('fetchData() completed');
  }
}

void main() async {
  await fetchData();
}
```