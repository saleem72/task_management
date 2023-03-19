//

import 'package:flutter/material.dart';
import 'package:task_management/theme/app_themes.dart';

import '../../theme/color_schemes.g.dart';

class ColrosScreen extends StatelessWidget {
  const ColrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  // _appPrimary(),
                  // _googlePrimary(),
                  // _appSecondary(),
                  // _googleSecondary(),
                  // _tertiary(),
                  _googleTertiary(),
                  // const SizedBox(width: 16),
                  // Column(
                  //   children: const [
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.newNeutral01),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.newNeutral02),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.newNeutral03),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.newNeutral04),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.newNeutral08),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.newNeutral06),
                  //   ],
                  // ),
                  // Column(
                  //   children: const [
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.another01),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.another02),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.another03),
                  //     SizedBox(height: 16),
                  //     ColoredCircle(color: GoogleColors.another04),
                  //   ],
                  // ),
                  const SizedBox(width: 16),
                  Column(
                    children: const [
                      SizedBox(height: 16),
                      ColoredCircle(color: GoogleColors.newNeutral03),
                      SizedBox(height: 16),
                      ColoredCircle(color: GoogleColors.another04),
                      SizedBox(height: 16),
                      ColoredCircle(color: GoogleColors.another03),
                      SizedBox(height: 16),
                      ColoredCircle(color: GoogleColors.newNeutral04),
                      SizedBox(height: 16),
                      ColoredCircle(color: GoogleColors.another02),
                      SizedBox(height: 16),
                      ColoredCircle(color: GoogleColors.newNeutral06),
                    ],
                  ),
                  // _neutralVarient(),
                  // _neutral(),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      ColoredCircle(color: AppColors.primary10),
                      ColoredCircle(color: GoogleColors.primary10),
                    ],
                  ),
                  Row(
                    children: const [
                      ColoredCircle(color: AppColors.secondary10),
                      ColoredCircle(color: GoogleColors.secondary10),
                    ],
                  ),
                  Row(
                    children: const [
                      ColoredCircle(color: AppColors.tertiary10),
                      ColoredCircle(color: GoogleColors.tertiary10),
                    ],
                  ),
                  Row(
                    children: const [
                      ColoredCircle(color: AppColors.neutral10),
                      ColoredCircle(color: GoogleColors.neutral10),
                    ],
                  ),
                  Row(
                    children: const [
                      ColoredCircle(color: AppColors.neutralVarient30),
                      ColoredCircle(color: GoogleColors.neutralVarient30),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Column _googleTertiary() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.tertiary10),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.tertiary20),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.tertiary30),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.tertiary40),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.tertiary80),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.tertiary90),
      ],
    );
  }

  Column _googleSecondary() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.secondary10),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.secondary20),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.secondary30),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.secondary40),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.secondary80),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.secondary90),
      ],
    );
  }

  Column _googlePrimary() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.primary10),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.primary20),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.primary30),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.primary40),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.primary80),
        SizedBox(height: 16),
        ColoredCircle(color: GoogleColors.primary90),
      ],
    );
  }

  Column _neutral() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutral10),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutral20),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutral90),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutral95),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutral99),
      ],
    );
  }

  Column _neutralVarient() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutralVarient30),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutralVarient50),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutralVarient60),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutralVarient80),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.neutralVarient90),
      ],
    );
  }

  Column _tertiary() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.tertiary10),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.tertiary20),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.tertiary30),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.tertiary40),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.tertiary80),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.tertiary90),
      ],
    );
  }

  Column _appSecondary() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.secondary10),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.secondary20),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.secondary30),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.secondary40),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.secondary80),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.secondary90),
      ],
    );
  }

  Column _appPrimary() {
    return Column(
      children: const [
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.primary10),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.primary20),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.primary30),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.primary40),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.primary80),
        SizedBox(height: 16),
        ColoredCircle(color: AppColors.primary90),
      ],
    );
  }
}

class ColoredCircle extends StatelessWidget {
  const ColoredCircle({
    super.key,
    this.size = 50,
    required this.color,
  });
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
