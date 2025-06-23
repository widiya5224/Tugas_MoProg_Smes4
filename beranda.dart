import 'package:flutter/material.dart';
import 'emergency_call_page.dart';
import 'sidebar.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  void _navigateToCall(BuildContext context, String contactName, String phoneNumber) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EmergencyCallPage(
          contactName: contactName,
          phoneNumber: phoneNumber,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'icon': '🚑', 'label': 'Ambulance', 'phone': '+62 21-118'},
      {'icon': '🔥', 'label': 'Damkar', 'phone': '+62 21-113'},
      {'icon': '👮', 'label': 'Polisi', 'phone': '+62 21-110'},
      {'icon': '🛣️', 'label': 'Jasamarga', 'phone': '+62 21-14080'},
      {'icon': '🏢', 'label': 'BPBD', 'phone': '+62 21-164'},
      {'icon': '🧭', 'label': 'Basarnas', 'phone': '+62 21-115'},
      {'icon': '⚡', 'label': 'PLN', 'phone': '+62 21-123'},
      {'icon': '⛽', 'label': 'Pertamina', 'phone': '+62 21-135'},
      {'icon': '💧', 'label': 'PDDAM', 'phone': '+62 21-158'},
      {'icon': '🚓', 'label': 'Polantas', 'phone': '+62 21-1500669'},
      {'icon': '🏙️', 'label': 'Admin Bekasi', 'phone': '+62 21-89903434'},
      {'icon': '🚤', 'label': 'Polair', 'phone': '+62 21-1234567'},
    ];

    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.emergency, color: Color.fromARGB(214, 255, 0, 0)),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_api.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black54],
                    ),
                  ),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: menuItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.85,
                    ),
                    itemBuilder: (context, index) {
                      final item = menuItems[index];
                      return GestureDetector(
                        onTap: () => _navigateToCall(context, item['label'], item['phone']),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: Text(item['icon'], style: const TextStyle(fontSize: 28)),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              item['label'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
