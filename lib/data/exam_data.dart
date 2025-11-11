import '../models/exam.dart';

List<Exam> getExams() {
  return [
    Exam(
      subject_name: "Mobile Information Systems",
      date: DateTime(2025, 11, 18, 10, 0),
      rooms: ["LAB2", "LAB3"],
    ),
    Exam(
      subject_name: "Advanced Programming",
      date: DateTime(2025, 11, 22, 16, 0),
      rooms: ["LAB 215"],
    ),
    Exam(
      subject_name: "Calculus",
      date: DateTime(2025, 11, 25, 9, 0),
      rooms: ["LAB 12", "LAB 13"],
    ),
    Exam(
      subject_name: "Operating systems",
      date: DateTime(2025, 1, 23, 11, 0),
      rooms: ["LAB 138"],
    ),
    Exam(
      subject_name: "Algorithms and data structures",
      date: DateTime(2025, 2, 2, 10, 0),
      rooms: ["LAB 138", "LAB 212"],
    ),
    Exam(
      subject_name: "Computer networks and security",
      date: DateTime(2025, 11, 25, 8, 0),
      rooms: ["LAB3","LAB 12"],
    ),
    Exam(
      subject_name: "Software Quality and Testing",
      date: DateTime(2026, 6, 5, 9, 30),
      rooms: ["LAB 200AB", "LAB200V"],
    ),
    Exam(
      subject_name: "Artificial intelligence",
      date: DateTime(2026, 6, 8, 11, 0),
      rooms: ["LAB 12"],
    ),
    Exam(
      subject_name: "Discrete mathematics",
      date: DateTime(2025, 2, 12, 10, 0),
      rooms: ["AMF FINKI","LAB 215"],
    ),
    Exam(
      subject_name: "Object-oriented programming",
      date: DateTime(2025, 3, 13, 12, 0),
      rooms: ["LAB 2", "LAB 3"],
    ),
    Exam(
      subject_name: "Probability and statistics",
      date: DateTime(2025, 2, 14, 9, 0),
      rooms: ["AMF FEIT","TMF AMF"],
    ),
  ];
}