import 'package:flutter/material.dart';

Widget customButton(context,
    {required String label,
    Color? labelColor,
    Color? bkgColor,
    required Function onTap}) {
  return Ink(
    child: InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: bkgColor ?? Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: labelColor ?? Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
