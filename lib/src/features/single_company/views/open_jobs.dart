import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/single_company/controllers/single_company_controller.dart';

class SingleCompanyOpenJobsScreen extends StatelessWidget {
  const SingleCompanyOpenJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingleCompanyController>(
      builder: (companyController) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: Text(companyController.companyUser?.name ?? ""),
          ),
          body: CustomScrollView(
            slivers: [],
          ),
        );
      },
    );
  }
}
