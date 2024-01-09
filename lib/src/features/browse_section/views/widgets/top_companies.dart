import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/company/top_companies.dart';
import 'package:jobpilot/src/features/find_company/controllers/find_company_controllers.dart';
import 'package:jobpilot/src/features/find_company/views/find_company.dart';
import 'package:jobpilot/src/global/widgets/app/single_company_card.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class TopCompaniesSection extends StatelessWidget {
  const TopCompaniesSection({
    super.key,
    required this.isLoading,
    this.data,
  });

  final bool isLoading;
  final List<({TopCompanies company, VoidCallback onTap})>? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all16 + vertical12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Top Companies",
            style: context.text.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          18.height,
          // if (isLoading)
          //   for (var i in List.generate(6, (index) => index)) ...[
          //     8.height,
          //     AppShimmer(
          //       child: SingleCompanyCardWidget(
          //         icon:
          //             "https://img.icons8.com/?size=50&id=vR39khPUVuj4&format=png",
          //         isFeatured: true,
          //         positionCount: i,
          //         name: "Dribble",
          //         location: "Dhaka, Bangladesh.",
          //         onOpenPositionTap: () {},
          //       ),
          //     ),
          //     8.height,
          //   ],
          for (var i
              in data ?? <({TopCompanies company, VoidCallback onTap})>[]) ...[
            8.height,
            SingleCompanyCardWidget(
              icon: i.company.companyLogo ??
                  "https://img.icons8.com/?size=50&id=vR39khPUVuj4&format=png",
              isFeatured: false,
              positionCount: i.company.openJobsCount ?? 0,
              name: i.company.name!,
              location: i.company.country ?? "",
              onOpenPositionTap: () =>
                  FindCompanyController.openOpenPositionsClick(
                i.company.username!,
              ),
              onCardTap: () => FindCompanyController.openCompanyPage(
                i.company.username!,
              ),
            ),
            8.height,
          ],
          18.height,
          InkWell(
            onTap: () => Get.to(() => const FindCompanyScreen()),
            child: Padding(
              padding: vertical3 + horizontal10,
              child: Text(
                "Load More Companies",
                style: context.text.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          ),
          18.height,
        ],
      ),
    );
  }
}
