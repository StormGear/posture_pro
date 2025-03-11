import 'package:posture_pro/summaries/summary_model.dart';


final List<PostureSummary> demoPostureSummaries = [
  PostureSummary(
    date: DateTime.now().subtract(const Duration(days: 1)),
    score: 85.2,
    posture: 'Good',
  ),
  PostureSummary(
    date: DateTime.now().subtract(const Duration(days: 2)),
    score: 75.2,
    posture: 'Fair',
  ),
  PostureSummary(
    date: DateTime.now().subtract(const Duration(days: 3)),
    score: 65.2,
    posture: 'Poor',
  ),
  PostureSummary(
    date: DateTime.now().subtract(const Duration(days: 4)),
    score: 55.2,
    posture: 'Good',
  ),
];