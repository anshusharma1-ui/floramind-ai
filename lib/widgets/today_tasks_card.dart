import 'package:flutter/material.dart';

class TodayTasksCard extends StatelessWidget {
  const TodayTasksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text(
            "Today's Tasks",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          _taskTile(
            Icons.water_drop,
            "Water Monstera",
            "08:00 AM",
            Colors.blue,
          ),

          const Divider(),

          _taskTile(
            Icons.eco,
            "Fertilize Rose",
            "Tomorrow",
            Colors.green,
          ),

          const Divider(),

          _taskTile(
            Icons.content_cut,
            "Prune Bonsai",
            "Sunday",
            Colors.orange,
          ),

          const SizedBox(height: 15),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("View All"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _taskTile(
    IconData icon,
    String title,
    String subtitle,
    Color color,
  ) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.15),
        child: Icon(
          icon,
          color: color,
        ),
      ),

      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Text(subtitle),

      trailing: const Icon(
        Icons.chevron_right,
      ),
    );
  }
}