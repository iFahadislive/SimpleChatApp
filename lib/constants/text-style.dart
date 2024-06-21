import 'package:flutter/material.dart';


TextStyle headline1 (BuildContext context) {
  return TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).colorScheme.primary
  );
}


TextStyle headline2 (BuildContext context) {
  return TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
  );
}



TextStyle headline3 (BuildContext context) {
  return TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
  );
}



TextStyle headline4 (BuildContext context) {
  return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).colorScheme.primary
  );
}
TextStyle headline5 (BuildContext context) {
  return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).colorScheme.primary
  );
}



TextStyle normalText(BuildContext context){
  return TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w200,
    color: Theme.of(context).colorScheme.inversePrimary,
  );
}