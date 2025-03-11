class PostureSummary {
  final DateTime date;
  final double score;
  final String posture;

  PostureSummary({
    required this.date,
    required this.score,
    required this.posture,
  });

  // Convert to Map for JSON serialization
  Map<String, dynamic> toMap() {
    return {
      'date': date.toIso8601String(),
      'score': score,
      'posture': posture,
    };
  }

  // Create object from Map for JSON deserialization
  factory PostureSummary.fromMap(Map<String, dynamic> map) {
    return PostureSummary(
      date: DateTime.parse(map['date']),
      score: map['score'].toDouble(),
      posture: map['posture'],
    );
  }
}