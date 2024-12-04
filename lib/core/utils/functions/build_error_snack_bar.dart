import 'package:flutter/material.dart';

import '../../../features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';

SnackBar buildErrorSnackBar(String errMessage) {
    return SnackBar(
      content: Text(
       errMessage,
        style: const TextStyle(color: Colors.black),
      ),
      duration: const Duration(seconds: 3),
    );
  }