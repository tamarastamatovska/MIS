class Exam {
    String subject_name;
    DateTime date;
    List<String> rooms;


    Exam({
      required this.subject_name,
      required this.date,
      required this.rooms,
    });

    bool get isPast {
      return date.isBefore(DateTime.now());
    }

    String getTimeUntilExam() {
      final now = DateTime.now();
      final difference = date.difference(now);

      if (difference.isNegative) {
        return "The exam is over!";
      }

      final days = difference.inDays;
      final hours = difference.inHours % 24;

      return "$days days, $hours hours";
    }

    String formatDate() {
      return "${date.day}.${date.month}.${date.year}";
    }

    String formatTime() {
      final hour = date.hour.toString().padLeft(2, '0');
      final minute = date.minute.toString().padLeft(2, '0');
      return "$hour:$minute";
    }

}

