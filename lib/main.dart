import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web_template/app.dart';

class StylesNeeded {String? fontDisplay, fontFamily, fontFeatureSettings, fontKerning, fontOpticalSizing, fontPalette, fontSize, fontStretch, fontStyle, fontSynthesis, fontSynthesisSmallCaps, fontSynthesisStyle, fontSynthesisWeight, fontVariant, fontVariantAlternates, fontVariantCaps, fontVariantEastAsian, fontVariantLigatures, fontVariantNumeric, fontVariantPosition, fontVariationSettings, fontWeight;}

void main() {
  Map a = jsonDecode(window.localStorage["startStyle"]!);
  runApp(App(a,));
}

