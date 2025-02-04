# Handling Exceptions in Asynchronous Dart Operations

This example showcases different ways to handle exceptions within asynchronous functions written in Dart.  It uses `Future` and demonstrates how to catch `TimeoutException` and other generic exceptions using `try-catch` blocks. The code is designed to illustrate robust error handling and cleanup using a `finally` block.

## Bug Description

The original code might not explicitly handle all possible exception types, leading to potential crashes or unexpected behavior.  This improved example adds more specific exception handling and a `finally` block for resource cleanup.

## Solution

The provided solution includes specific `catch` blocks for `TimeoutException` and a general `Exception`.  The `finally` block makes sure that "fetchData() completed" is always printed, ensuring the completion of the function is noted whether an exception occurs or not.

## How to run the code

1. Save the code as `bug.dart` and `bugSolution.dart`
2. Run the code using a Dart compiler: `dart bugSolution.dart`