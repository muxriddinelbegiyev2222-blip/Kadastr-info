import 'package:flutter/material.dart';

class CadastreService {
  final int id;
  final IconData icon;
  final Map<String, String> title;
  final Map<String, String> summary;
  final Map<String, List<String>> requiredDocs;
  final Map<String, String> missingDocsGuide;
  final Map<String, String> cost;
  final Map<String, String> timeframe;

  CadastreService({
    required this.id,
    required this.icon,
    required this.title,
    required this.summary,
    required this.requiredDocs,
    required this.missingDocsGuide,
    required this.cost,
    required this.timeframe,
  });
}