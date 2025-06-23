import 'package:flutter/material.dart';

class EmergencyCallPage extends StatelessWidget {
  final String contactName;
  final String phoneNumber;

  const EmergencyCallPage({
    super.key,
    required this.contactName,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD8D8FA),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                contactName,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                phoneNumber,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 28,
                      child: const Icon(Icons.call_end, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 30),

                  
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 22,
                      child: const Icon(Icons.mail, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 30),

                  
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 28,
                      child: const Icon(Icons.call, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
