import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';
import '../data/services_data.dart';
import 'service_detail_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final appProv = Provider.of<AppProvider>(context);
    final lang = appProv.language;

    final filteredServices = cadastreServices.where((service) {
      final title = service.title[lang] ?? '';
      return title.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();

    Map<String, String> appTitles = {
      'uz_lat': "Kadastr Ma'lumotnomasi",
      'uz_cyr': "Кадастр Маълумотномаси",
      'ru': "Кадастровый Справочник",
      'en': "Cadastre Reference Guide",
    };

    Map<String, String> searchHints = {
      'uz_lat': "Xizmat nomini izlash...",
      'uz_cyr': "Хизмат номини излаш...",
      'ru': "Поиск услуги...",
      'en': "Search service...",
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTitles[lang] ?? "Kadastr",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: searchHints[lang],
                prefixIcon: const Icon(Icons.search),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  _searchQuery = val;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: filteredServices.length,
              itemBuilder: (context, index) {
                final item = filteredServices[index];
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.12),
                      child: Icon(item.icon, color: Theme.of(context).primaryColor),
                    ),
                    title: Text(
                      item.title[lang] ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        item.summary[lang] ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServiceDetailScreen(service: item),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
            color: Theme.of(context).brightness == Brightness.dark 
                ? Colors.black26 
                : Colors.grey.shade200,
            child: const Text(
              "Kadastr agentligi | Ishlab chiquvchi: Muxriddin Elbegiyev (+998339112222)",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}