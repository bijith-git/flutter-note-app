import 'package:flutter/material.dart';
import 'package:noteapp_flutter/constants/colors.dart';

final InputDecoration textDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: textFieldBorder)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: textFieldBorder)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: textFieldBorder)));

const EdgeInsets defualtPadding =
    EdgeInsets.symmetric(horizontal: 20, vertical: 10);
