import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:t_store/common/widgets/products/cart/cart_item.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => Column(
        children: [
          /// Cart Item
          const TCartItem(),
         if(showAddRemoveButton)  
         const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          /// Add Remove Button Row with Total Price
        if(showAddRemoveButton)
         const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  SizedBox(
                    width: 70,
                  ),

                  /// Add Remove Button
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),

              /// Product Toatal Price
              TProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
