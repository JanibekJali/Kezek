import 'package:flutter/material.dart';
import 'package:kazek/components/shimmer/shimmer.dart';

class CatalogSimmer extends StatelessWidget {
  const CatalogSimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Shimmer(
      linearGradient: shimmerGradient,
      child: GridView.builder(
          itemCount: 8,
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2.25,
          ),
          itemBuilder: (context, index) {
            return ShimmerLoading(
              isLoading: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
