// try {
//   breedMoreLlamas();
// } on OutOfLlamasException {
//   // A specific exception
//   buyMoreLlamas();
// } on Exception catch (e) {
//   // Anything else that is an exception
//   print('Unknown exception: $e');
// } catch (e) {
//   // No specified type, handles all
//   print('Something really unknown: $e');
// }

// try {
//   // ···
// } on Exception catch (e) {
//   print('Exception details:\n $e');
// } catch (e, s) {
//   print('Exception details:\n $e');
//   print('Stack trace:\n $s');
// }

// try {
//   breedMoreLlamas();
// } catch (e) {
//   print('Error: $e'); // Handle the exception first.
// } finally {
//   // Always clean up, even if an exception is thrown.
//   cleanLlamaStalls(); // Then clean up.
// }

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handle ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}
