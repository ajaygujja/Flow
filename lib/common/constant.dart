import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 50,
    printTime: true,
  ),
);

void showSnackbar(String title, String msg) {
  Get.snackbar(title, msg, backgroundColor: Colors.black.withOpacity(0.3));
}
