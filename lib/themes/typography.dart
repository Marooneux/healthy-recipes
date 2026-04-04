import 'package:flutter/material.dart';
import 'colors.dart';

/// Classe contenant tous les styles de texte de l'application.
class AppTypography {
  AppTypography._();

  static const TextStyle preset1 = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w800,
    fontSize: 72.0,
    height: 1.1,
    letterSpacing: -2.0,
    color: AppColors.primary
  );


  static const TextStyle preset1Tablet = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w800,
    fontSize: 64.0,
    height: 1.1,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 1 (Mobile)
  static const TextStyle preset1Mobile = TextStyle (
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w800,
    fontSize: 52.0,
    height: 1.1,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 2 (Desktop)
  static const TextStyle preset2 = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w800,
    fontSize: 48.0,
    height: 1.2,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 2 (Mobile)
  static const TextStyle preset2Mobile = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w800,
    fontSize: 40.0,
    height: 1.2,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 3
  static const TextStyle preset3 = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w700,
    fontSize: 32.0,
    height: 1.3,
    letterSpacing: -1.0,
    color: AppColors.primary
  );

  // Text Preset 4
  static const TextStyle preset4 = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w700,
    fontSize: 24.0,
    height: 1.3,
    letterSpacing: -1.0,
    color: AppColors.primary
  );

  // Text Preset 5
  static const TextStyle preset5 = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
    height: 1.4,
    letterSpacing: -0.5,
  );

  // Text Preset 6
  static const TextStyle preset6 = TextStyle(
    fontFamily: 'Nunito Sans',
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
    height: 1.5,
    letterSpacing: -0.4,
  );

  // Text Preset 7
  static const TextStyle preset7 = TextStyle(
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    height: 1.5,
    letterSpacing: -0.3,
  );

  // Text Preset 8
  static const TextStyle preset8 = TextStyle(
    fontFamily: 'Nunito Sans',
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: -0.3,
  );

  // Text Preset 9
  static const TextStyle preset9 = TextStyle(
    fontFamily: 'Nunito Sans',
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: -0.3,
  );

  // Text Preset 10
  static const TextStyle preset10 = TextStyle(
    fontFamily: 'Nunito Sans',
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
    height: 1.5,
    letterSpacing: -0.3,
  );
}