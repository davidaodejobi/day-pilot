import 'package:day_pilot/src/common_widgets/custom_appbar.dart';
import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/features/dashboard/task/empty_task_placeholder.dart';
import 'package:day_pilot/src/features/dashboard/task/task_card.dart';
import 'package:day_pilot/src/features/task/data/fake_tasks_repository.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashBoard extends HookConsumerWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsRepository = ref.watch(fakeItemsRepositoryProvider);
    return Scaffold(
      appBar: customAppBar(
        context,
        isBackButton: false,
        hasElevation: true,
        leading: SvgPicture.asset(
          "menu".svg,
          // ignore: deprecated_member_use
          color: AppColors.textColor,
          fit: BoxFit.cover,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: false
                    ? const EmptyTaskPlaceHolder()
                    : ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        itemCount: itemsRepository.getTasks().length,
                        itemBuilder: (context, index) {
                          final task = itemsRepository.getTasks()[index];
                          return TaskCard(
                            title: task.title,
                            status: task.status,
                            duration: task.duration,
                            isCompleted: task.isCompleted,
                            priority: task.priority,
                            timeLeft: task.timeLeft,
                          );
                        },
                      ),
                // ListView(
                //     padding: EdgeInsets.symmetric(horizontal: 16.w),
                //     children: const [
                //       TaskCard(),
                //     ],
                //   ),
              ),
            ),
            SizedBox(
              height: 45.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.scaffoldBackgroundColor,
                    child: const Icon(
                      Icons.menu,
                      color: AppColors.textColor,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25.r,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.scaffoldBackgroundColor,
                    child: const Icon(
                      Icons.menu,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ).padHorizontal(.07.sh),
            ),
          ],
        ),
      ),
    );
  }
}
