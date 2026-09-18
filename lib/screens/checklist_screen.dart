import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/service_model.dart';
import '../providers/app_provider.dart';

class ChecklistScreen extends StatefulWidget {
  final CadastreService service;

  const ChecklistScreen({super.key, required this.service});

  @override
  State<ChecklistScreen> createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends State<ChecklistScreen> {
  final Map<int, bool> _checkedStatus = {};

  @override
  Widget build(BuildContext context) {
    final appProv = Provider.of<AppProvider>(context);
    final lang = appProv.language;
    final docs = widget.service.requiredDocs[lang] ?? [];

    bool allReady = docs.isNotEmpty && docs.asMap().entries.every((e) => _checkedStatus[e.key] == true);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hujjatlarni Tekshirish"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.12),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.shade700),
              ),
              child: const Row(
                children: [
                  Icon(Icons.shield_outlined, color: Colors.orange, size: 28),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Qo'lingizdagi bor hujjatlarni belgilang. Shunda siz ortiqcha ovvoragarchiliksiz va aldovlarsiz markazga borishingiz mumkin bo'ladi.",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    margin: const EdgeInsets.only(bottom: 10),
                    child: CheckboxListTile(
                      title: Text(docs[index]),
                      value: _checkedStatus[index] ?? false,
                      onChanged: (val) {
                        setState(() {
                          _checkedStatus[index] = val ?? false;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: allReady ? Colors.green.shade50 : Colors.red.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: allReady ? Colors.green : Colors.red),
              ),
              child: Column(
                children: [
                  Icon(
                    allReady ? Icons.task_alt : Icons.warning_amber_rounded,
                    color: allReady ? Colors.green : Colors.red,
                    size: 36,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    allReady
                        ? "Barcha hujjatlaringiz to'liq! Davlat xizmatlari markaziga ishonch bilan murojaat qilishingiz mumkin."
                        : "Hali barcha hujjatlar belgilanmadi. Yetishmayotgan hujjatlarni oldindan to'plab oling!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: allReady ? Colors.green.shade900 : Colors.red.shade900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}