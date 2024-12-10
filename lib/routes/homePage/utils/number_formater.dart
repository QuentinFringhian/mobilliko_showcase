/// Formats a double value as a string, removing decimal places if the value is an integer.
String formatPrice(double value) {
  if (value % 1 == 0) {
    return value.toInt().toString();
  }
  return value.toStringAsFixed(2);
}

/// Formats an integer value with spaces as thousands separators.
String formatWithSpaces(int value) {
  final String valueString = value.toString();
  final StringBuffer formattedString = StringBuffer();

  for (int i = 0; i < valueString.length; i++) {
    if (i > 0 && (valueString.length - i) % 3 == 0) {
      formattedString.write(' ');
    }
    formattedString.write(valueString[i]);
  }

  return formattedString.toString();
}
