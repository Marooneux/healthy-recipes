import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

/// Classe contenant tous les styles de texte de l'application.
class AppTypography {
  AppTypography._();

  static final TextStyle preset1 = GoogleFonts.nunito(
    fontWeight: FontWeight.w800,
    fontSize: 72.0,
    height: 1.1,
    letterSpacing: -2.0,
    color: AppColors.primary
  );


  static final TextStyle preset1Tablet = GoogleFonts.nunito(
    fontWeight: FontWeight.w800,
    fontSize: 64.0,
    height: 1.1,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 1 (Mobile)
  static final TextStyle preset1Mobile = GoogleFonts.nunito(
    fontWeight: FontWeight.w800,
    fontSize: 52.0,
    height: 1.1,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 2 (Desktop)
  static final TextStyle preset2 = GoogleFonts.nunito(
    fontWeight: FontWeight.w800,
    fontSize: 48.0,
    height: 1.2,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 2 (Mobile)
  static final TextStyle preset2Mobile = GoogleFonts.nunito(
    fontWeight: FontWeight.w800,
    fontSize: 40.0,
    height: 1.2,
    letterSpacing: -2.0,
    color: AppColors.primary
  );

  // Text Preset 3
  static final TextStyle preset3 = GoogleFonts.nunito(
    fontWeight: FontWeight.w700,
    fontSize: 32.0,
    height: 1.3,
    letterSpacing: -1.0,
    color: AppColors.primary
  );

  // Text Preset 4
  static final TextStyle preset4 = GoogleFonts.nunito(
    fontWeight: FontWeight.w700,
    fontSize: 24.0,
    height: 1.3,
    letterSpacing: -1.0,
    color: AppColors.primary
  );

  // Text Preset 5
  static final TextStyle preset5 = GoogleFonts.nunito(
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
    height: 1.4,
    letterSpacing: -0.5,
  );

  // Text Preset 6
  static final TextStyle preset6 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
    height: 1.5,
    letterSpacing: -0.4,
  );

  // Text Preset 7
  static final TextStyle preset7 = GoogleFonts.nunito(
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    height: 1.5,
    letterSpacing: -0.3,
  );

  // Text Preset 8
  static final TextStyle preset8 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: -0.3,
  );

  // Text Preset 9
  static final TextStyle preset9 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    height: 1.5,
    letterSpacing: -0.3,
  );

  // Text Preset 10
  static final TextStyle preset10 = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
    height: 1.5,
    letterSpacing: -0.3,
  );
}