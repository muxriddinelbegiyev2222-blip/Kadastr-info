import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/service_model.dart';
import '../providers/app_provider.dart';
import 'checklist_screen.dart';

class ServiceDetailScreen extends StatelessWidget {
  final CadastreService service;

  const ServiceDetailScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final appProv = Provider.of<AppProvider>(context);
    final lang = appProv.language;

    final Map<String, String> labels = {
      'uz_lat': "Oddiy tilda mazmuni",
      'uz_cyr': "Оддий тилда мазмуни",
      'ru': "Простыми словами",
      'en': "Summary in Plain Words",
    };

    final Map<String, String> btnDocs = {
      'uz_lat': "Kerakli hujjatlar",
      'uz_cyr': "Керакли ҳужжатлар",
      'ru': "Необходимые документы",
      'en': "Required Documents",
    };

    final Map<String, String> btnMissing = {
      'uz_lat': "Hujjat bo'lmasa qayerdan olinadi?",
      'uz_cyr': "Ҳужжат бўлмаса қаердан олинади?",
      'ru': "Где получить недостающие документы?",
      'en': "Where to retrieve missing documents?",
    };

    final Map<String, String> btnCheck = {
      'uz_lat': "Hujjatlarim to'liqmi? (Tekshirish)",
      'uz_cyr': "Ҳужжатларим тўлиқми? (Текшириш)",
      'ru': "Все ли документы готовы? (Проверить)",
      'en': "Are my documents complete? (Verify)",
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(service.title[lang] ?? ''),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.payment, size: 18, color: Colors.blue),
                            SizedBox(width: 6),
                            Text("To'lov / Narx", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(service.cost[lang] ?? '', style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.timer_outlined, size: 18, color: Colors.green),
                            SizedBox(width: 6),
                            Text("Muddati", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(service.timeframe[lang] ?? '', style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              labels[lang] ?? "Mazmuni",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                service.summary[lang] ?? '',
                style: const TextStyle(fontSize: 15, height: 1.4),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.folder_open),
              label: Text(btnDocs[lang] ?? ''),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                _showInfoSheet(
                  context,
                  btnDocs[lang] ?? '',
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: (service.requiredDocs[lang] ?? []).map((doc) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.check_circle_outline, color: Colors.green, size: 20),
                          const SizedBox(width: 8),
                          Expanded(child: Text(doc, style: const TextStyle(fontSize: 15))),
                        ],
                      ),
                    )).toList(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              icon: const Icon(Icons.help_outline),
              label: Text(btnMissing[lang] ?? ''),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                _showInfoSheet(
                  context,
                  btnMissing[lang] ?? '',
                  Text(
                    service.missingDocsGuide[lang] ?? '',
                    style: const TextStyle(fontSize: 15, height: 1.4),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            FilledButton.tonalIcon(
              icon: const Icon(Icons.fact_check_outlined, color: Colors.teal),
              label: Text(
                btnCheck[lang] ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChecklistScreen(service: service),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showInfoSheet(BuildContext context, String title, Widget content) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(height: 24),
            content,
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}