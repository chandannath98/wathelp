import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SingleCompanyCardWidget extends StatelessWidget {
  const SingleCompanyCardWidget({
    super.key,
    required this.isFeatured,
    required this.positionCount,
    required this.icon,
    required this.name,
    required this.location,
    required this.onCardTap,
    required this.onOpenPositionTap,
  });

  final bool isFeatured;
  final int positionCount;
  final String icon;
  final String name;
  final String location;
  final VoidCallback onCardTap;
  final VoidCallback onOpenPositionTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      borderRadius: BorderRadius.circular(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.color?.theme,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: context.color?.secondaryAccent ?? Colors.grey,
          ),
        ),
        child: AspectRatio(
          aspectRatio: 380 / 162,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: all16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              clipBehavior: Clip.hardEdge,
                              child: ColoredBox(
                                color: context.color?.secondaryAccent ??
                                    Colors.grey,
                                child: SizedBox.square(
                                  dimension: constraints.maxHeight,
                                  child: Image.network(
                                    icon,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            16.width,
                            Expanded(
                              child: Padding(
                                padding: vertical8,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  name,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: context
                                                      .text.titleMedium
                                                      ?.copyWith(
                                                    color: context
                                                        .color?.extraText,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              // FIXME: If Company Featured key is available. Comment out this section.
                                              /* 
                                              if (isFeatured) ...[
                                                12.width,
                                                DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: context
                                                        .color?.primaryAccent
                                                        .withOpacity(0.1),
                                                    borderRadius:
                                                        BorderRadius.circular(12),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        vertical6 + horizontal12,
                                                    child: Text(
                                                      "Featured",
                                                      style: context
                                                          .text.titleSmall
                                                          ?.copyWith(
                                                        color: context
                                                            .color?.primaryAccent,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              */
                                            ],
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      color:
                                                          context.color?.extra,
                                                    ),
                                                    Text(
                                                      location,
                                                      style: context
                                                          .text.titleMedium,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  8.height,
                  TextButton(
                    onPressed: onOpenPositionTap,
                    style: TextButton.styleFrom(
                      foregroundColor: context.color?.primary,
                      backgroundColor: context.color?.primary.withOpacity(0.1),
                    ),
                    child: Text(
                      "Open Position ($positionCount)",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
