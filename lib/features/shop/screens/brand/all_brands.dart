import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/brands/brand_card.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/layouts/grid_layouts.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/brand/brand_products.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Heading --
              const TSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// -- Brands --
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtend: 80,
                  itembuilder: (context, index) {
                    return TBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(
                        () => const BrandProducts(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
