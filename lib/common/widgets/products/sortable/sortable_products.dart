import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items: const [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child:  Text(option),
                ),
              )
              .toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
    
        ///Products
        TGridLayout(
          itemCount: 11,
          itembuilder: (context, index) {
            return const TProductCardVertical();
          },
        ),
      ],
    );
  }
}
