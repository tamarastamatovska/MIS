import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam.dart';

class ExamCard extends StatelessWidget{

  final Exam exam;
  final VoidCallback onTap;

  const ExamCard ({
    super.key,
    required this.exam,
    required this.onTap
   });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final dateFormat = DateFormat('dd.MM.yyyy');
    final timeFormat = DateFormat('HH:mm');
    final isPast = exam.isPast;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: isPast ? Colors.green[100] : Colors.red[100],
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exam.subject_name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isPast ? Colors.green[800] : Colors.red[800],

                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: isPast ? Colors.grey[600] : Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    dateFormat.format(exam.date),
                    style: TextStyle(
                      fontSize: 14,
                      color: isPast ? Colors.grey[700] : Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: isPast ? Colors.grey[600] : Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    timeFormat.format(exam.date),
                    style: TextStyle(
                      fontSize: 14,
                      color: isPast ? Colors.grey[700] : Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: isPast ? Colors.grey[600] : Colors.red,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      exam.rooms.join(", "),
                      style: TextStyle(
                        fontSize: 14,
                        color: isPast ? Colors.grey[700] : Colors.black87,
                      ),
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



