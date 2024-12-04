import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TheHelperFunctions {
  // Method to get color based on a string value
  static Color? getColor(String value) {
    // Define your product-specific colors here and it will match the attribute colors
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
    return Colors.yellow;
  } else if (value == 'Orange') {
    return Colors.orange;
  } else if (value == 'Brown') {
    return Colors.brown;
  } else if (value == 'Cyan') {
    return Colors.cyan;
  } else if (value == 'Teal') {
    return Colors.teal;
  } else if (value == 'Amber') {
    return Colors.amber;
  } else if (value == 'Lime') {
    return Colors.lime;
  } else if (value == 'Indigo') {
    return Colors.indigo;
  } else if (value == 'DeepPurple') {
    return Colors.deepPurple;
  } else if (value == 'LightBlue') {
    return Colors.lightBlue;
  } else if (value == 'LightGreen') {
    return Colors.lightGreen;
  } else if (value == 'DeepOrange') {
    return Colors.deepOrange;
  }
    return null;
  }

  // Show a SnackBar with a message
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Show an alert dialog with title and message
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Navigate to a new screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  // Truncate a string if it exceeds the max length
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  // Check if the app is in dark mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // Get the size of the screen
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Get the height of the screen
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Get the width of the screen
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // Format the date with a given format
  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  // Remove duplicates from a list
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  // Wrap widgets into rows
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}
