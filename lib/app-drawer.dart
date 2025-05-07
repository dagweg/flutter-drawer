import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1A1A1A),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Profile section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Set Emoji Status',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const Divider(height: 1, color: Colors.grey),

          // Menu items
          _buildMenuItem(context, Icons.person_outline, 'My Profile'),
          _buildMenuItem(
            context,
            Icons.account_balance_wallet_outlined,
            'Wallet',
          ),
          _buildMenuItem(context, Icons.group_add_outlined, 'New Group'),
          _buildMenuItem(context, Icons.campaign_outlined, 'New Channel'),
          _buildMenuItem(context, Icons.person_outline, 'Contacts'),
          _buildMenuItem(context, Icons.call_outlined, 'Calls'),
          _buildMenuItem(context, Icons.bookmark_border, 'Saved Messages'),
          _buildMenuItem(context, Icons.settings_outlined, 'Settings'),

          // Night Mode with Switch
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.nightlight_round, color: Colors.grey),
                    SizedBox(width: 16),
                    Text(
                      'Night Mode',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
