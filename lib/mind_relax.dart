import 'package:flutter/material.dart';

void main() {
  runApp(const MindRelaxApp());
}

class MindRelaxApp extends StatelessWidget {
  const MindRelaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mind Deep Relax',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const MindRelaxScreen(),
    );
  }
}

class MindRelaxScreen extends StatelessWidget {
  const MindRelaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),

                // Картинка
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      'assets/images/mind_deep_relax.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 19),

                const Text(
                  'Peter Mach',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF8B8B8B),
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'Mind Deep Relax',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 11),

                const Text(
                  'Join the Community as we prepare over 33 days '
                  'to relax and feel joy with the mind and happiness '
                  'session across the World.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Color(0xFF292929),
                  ),
                ),

                const SizedBox(height: 27),

                // Play Next Session
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0AA3A7),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_outlined,
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Play Next Session',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                _SessionItem(
                  color: const Color(0xFF347FE8),
                  title: 'Sweet Memories',
                  subtitle: 'December 29 Pre-Launch',
                ),

                _SessionItem(
                  color: const Color(0xFF08A5A8),
                  title: 'A Day Dream',
                  subtitle: 'December 29 Pre-Launch',
                ),

                _SessionItem(
                  color: const Color(0xFFF79332),
                  title: 'Mind Explore',
                  subtitle: 'December 29 Pre-Launch',
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SessionItem extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;

  const _SessionItem({
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFEEEEEE),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(11),
            ),
            child: const Icon(
              Icons.play_arrow_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF292929),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF999999),
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: const [
              CircleAvatar(
                radius: 3,
                backgroundColor: Color(0xFFD4D4D4),
              ),
              SizedBox(width: 4),
              CircleAvatar(
                radius: 3,
                backgroundColor: Color(0xFFD4D4D4),
              ),
              SizedBox(width: 4),
              CircleAvatar(
                radius: 3,
                backgroundColor: Color(0xFFD4D4D4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}