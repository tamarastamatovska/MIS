import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam.dart';

class ExamDetailsScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailsScreen({
    super.key,
    required this.exam,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd.MM.yyyy');
    final timeFormat = DateFormat('HH:mm');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Exam Details "),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          exam.subject_name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _buildDetailRow(
                        icon: Icons.calendar_today,
                        label: "Date:",
                        value: dateFormat.format(exam.date),
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 16),
                      _buildDetailRow(
                        icon: Icons.access_time,
                        label: "Time:",
                        value: timeFormat.format(exam.date),
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 16),
                      _buildDetailRow(
                        icon: Icons.location_on,
                        label: "Rooms:",
                        value: exam.rooms.join(", "),
                        color: Colors.red,
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: exam.isPast ? Colors.green[100] : Colors.red[100],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: exam.isPast ? Colors.green : Colors.red,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              exam.isPast ? Icons.check_circle : Icons.timer,
                              size: 40,
                              color: exam.isPast ? Colors.grey[700] : Colors.blue,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              exam.isPast ? "Status: Completed" : "Time Remaining:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: exam.isPast ? Colors.grey[700] : Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              exam.getTimeUntilExam(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: exam.isPast ? Colors.grey[700] : Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}