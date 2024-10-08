import 'package:flutter/cupertino.dart';

abstract class ContactStrategy {
  void open(BuildContext context, String url);
}