import 'package:flutter/material.dart';

void main() {
  runApp(const OrganizerApp());
}

class OrganizerApp extends StatelessWidget {
  const OrganizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizer',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const OrganizerScreen(),
    );
  }
}

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  static const Color primary = Color(0xFF5870FF);
  static const Color textColor = Color(0xFF182230);
  static const Color lightPurple = Color(0xFFF0F2FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),

                // Верхняя панель
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 32,
                        minHeight: 32,
                      ),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: primary,
                        size: 20,
                      ),
                    ),

                    const SizedBox(width: 8),

                    const Text(
                      'Organizer',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                      ),
                    ),

                    const Spacer(),

                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: lightPurple,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Icon(
                        Icons.more_vert,
                        color: primary,
                        size: 27,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Фото
                Center(
                  child: Container(
                    width: 114,
                    height: 114,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFDCDDEA),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/albert_flores.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.person,
                            size: 70,
                            color: Colors.white,
                          );
                        },
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Имя
                const Center(
                  child: Text(
                    'Albert Flores',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Статистика
                const Row(
                  children: [
                    Expanded(
                      child: _StatItem(
                        value: '2.368',
                        label: 'Followers',
                      ),
                    ),
                    SizedBox(
                      height: 64,
                      child: VerticalDivider(
                        color: Color(0xFFE9E9EF),
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      child: _StatItem(
                        value: '346',
                        label: 'Following',
                      ),
                    ),
                    SizedBox(
                      height: 64,
                      child: VerticalDivider(
                        color: Color(0xFFE9E9EF),
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      child: _StatItem(
                        value: '13',
                        label: 'Events',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                const Divider(
                  color: Color(0xFFE6E6EC),
                  thickness: 1,
                ),

                const SizedBox(height: 22),

                // Follow / Messages
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 46,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primary,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_add_alt_1,
                                size: 17,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Follow',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: SizedBox(
                        height: 46,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: primary,
                            side: const BorderSide(
                              color: primary,
                              width: 1.8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                size: 17,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Messages',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                const Divider(
                  color: Color(0xFFE6E6EC),
                  thickness: 1,
                ),

                const SizedBox(height: 22),

                // Tabs
                Row(
                  children: [
                    Expanded(
                      child: _TabButton(
                        title: 'About',
                        selected: true,
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _TabButton(
                        title: 'Events',
                        selected: false,
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _TabButton(
                        title: 'Reviews',
                        selected: false,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // About
                const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF394150),
                  ),
                ),

                const SizedBox(height: 9),

                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore '
                  'magna aliqua. Ut enim ad minim veniam, quis nostrud '
                  'exercitation ullamco laboris nisi ut Lorem ipsum dolor sit '
                  'amet, consectetur adipiscing elit, sed do eiusmod '
                  'tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: Color(0xFF435066),
                  ),
                ),

                const SizedBox(height: 3),

                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Read more...',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: primary,
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
            color: Color(0xFF182230),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF313A4A),
          ),
        ),
      ],
    );
  }
}

class _TabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const _TabButton({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: selected
          ? ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5870FF),
                foregroundColor: Colors.white,
                elevation: 0,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : OutlinedButton(
              onPressed: onTap,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF5870FF),
                side: const BorderSide(
                  color: Color(0xFF5870FF),
                  width: 1.7,
                ),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }
}