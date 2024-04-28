import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../models/notification_model.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      NotificationModel(
        label: 'Absensi Mendatang',
        title: 'Absensi Pulang',
        message: 'dilakukan pukul 16:00 mendatang',
        datetime: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      NotificationModel(
        label: 'Absensi Mendatang',
        title: 'Absensi Pulang',
        message: 'dilakukan pukul 16:00 mendatang',
        datetime: DateTime.now().subtract(const Duration(days: 2)),
      ),
      NotificationModel(
        label: 'Absensi Mendatang',
        title: 'Absensi Pulang',
        message: 'dilakukan pukul 16:00 mendatang',
        datetime: DateTime.now().subtract(const Duration(minutes: 2)),
      ),
      NotificationModel(
        label: 'Absensi Mendatang',
        title: 'Absensi Pulang',
        message: 'dilakukan pukul 16:00 mendatang',
        datetime: DateTime(
          2024,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: notifications.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  Assets.images.notification.image(width: 183.0),
                  const SpaceHeight(60.0),
                  const Text(
                    'Belum ada Notifikasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SpaceHeight(20.0),
                  const Text(
                    'Jika Anda mendapat notifikasi dari aktivitas Anda, notifikasi tersebut akan muncul di sini.',
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Button.filled(
                    onPressed: () => context.pop(),
                    label: 'Back Home',
                  ),
                ],
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  final item = notifications[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.label,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: AppColors.grey,
                            ),
                          ),
                          Text(
                            item.timeAgo,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SpaceHeight(4.0),
                      Text.rich(
                        TextSpan(
                          text: item.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' ${item.message}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.stroke,
                  height: 24.0,
                ),
                itemCount: notifications.length,
              ),
      ),
    );
  }
}
