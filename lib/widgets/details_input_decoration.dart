import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration detailsInputDecoration(String label) {
  return InputDecoration(
    labelText: label,
    contentPadding: EdgeInsets.all(10),
    alignLabelWithHint: true,
    border: OutlineInputBorder(),
  );
}
