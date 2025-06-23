import 'package:flutter/material.dart';
import 'login.dart';
import 'signin.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: SizedBox(),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('keluar'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (route) => false,
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('hapus akun'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Konfirmasi'),
                  content: const Text('Apakah Anda yakin ingin menghapus akun?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Tidak'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                          (route) => false,
                        );
                      },
                      child: const Text('Iya'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
