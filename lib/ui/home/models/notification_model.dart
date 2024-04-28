import '../../../core/core.dart';

class NotificationModel {
  final String label;
  final String title;
  final String message;
  final DateTime datetime;

  NotificationModel({
    required this.label,
    required this.title,
    required this.message,
    required this.datetime,
  });

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(datetime);

    if (difference.inDays > 30) {
      return datetime.toFormattedDate();
    } else if (difference.inDays > 0) {
      final days = difference.inDays;
      return '$days ${days == 1 ? 'day' : 'days'} ago';
    } else if (difference.inHours > 0) {
      final hours = difference.inHours;
      return '$hours ${hours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inMinutes > 0) {
      final minutes = difference.inMinutes;
      return '$minutes ${minutes == 1 ? 'minute' : 'minutes'} ago';
    } else {
      return 'Just now';
    }
  }
}
