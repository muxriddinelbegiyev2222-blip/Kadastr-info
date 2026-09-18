import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appProv = Provider.of<AppProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sozlamalar / Настройки"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text("Mavzu rejimi / Тема", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SegmentedButton<ThemeMode>(
            segments: const [
              ButtonSegment(value: ThemeMode.light, label: Text("Yorug'"), icon: Icon(Icons.light_mode)),
              ButtonSegment(value: ThemeMode.dark, label: Text("Tungi"), icon: Icon(Icons.dark_mode)),
              ButtonSegment(value: ThemeMode.system, label: Text("Tizim"), icon: Icon(Icons.settings_system_daydream)),
            ],
            selected: {appProv.themeMode},
            onSelectionChanged: (val) {
              appProv.setThemeMode(val.first);
            },
          ),
          const SizedBox(height: 24),
          const Text("Tilni tanlang / Выберите язык", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ListTile(
            title: const Text("O'zbekcha (Lotin)"),
            trailing: appProv.language == 'uz_lat' ? const Icon(Icons.check, color: Colors.blue) : null,
            onTap: () => appProv.setLanguage('uz_lat'),
          ),
          ListTile(
            title: const Text("Ўзбекча (Кирилл)"),
            trailing: appProv.language == 'uz_cyr' ? const Icon(Icons.check, color: Colors.blue) : null,
            onTap: () => appProv.setLanguage('uz_cyr'),
          ),
          ListTile(
            title: const Text("Русский"),
            trailing: appProv.language == 'ru' ? const Icon(Icons.check, color: Colors.blue) : null,
            onTap: () => appProv.setLanguage('ru'),
          ),
          ListTile(
            title: const Text("English"),
            trailing: appProv.language == 'en' ? const Icon(Icons.check, color: Colors.blue) : null,
            onTap: () => appProv.setLanguage('en'),
          ),
          const Divider(height: 32),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.blue),
            title: const Text("Dasturning asosiy maqsadi"),
            subtitle: const Text("Korrupsiyani oldini olish va huquqiy savodxonlik"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Dastur maqsadi"),
                  content: const Text(
                    "Ushbu mobil ma'lumotnoma Kadastr agentligi markaziy apparati tashabbusi bilan yaratilgan bo'lib, "
                    "asosiy maqsad — fuqarolarga ko'chmas mulk hujjatlari bo'yicha uyda o'tirgan holda to'liq huquqiy tushuncha berish, "
                    "hujjatlarning to'liqligini oldindan tekshirish va ortiqcha xarajat hamda korrupsiyaviy holatlarga tushib qolishining oldini olishdir.",
                  ),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text("Tushunarli")),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 0,
            color: Colors.blueGrey.withOpacity(0.08),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tashabbuskor: Kadastr agentligi markaziy apparati",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Dastur ishlab chiquvchi: Muxriddin Elbegiyev",
                    style: TextStyle(fontSize: 11, color: Colors.black87),
                  ),
                  Text(
                    "Aloqa / Murojaat uchun: +998339112222",
                    style: TextStyle(fontSize: 11, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}