import 'package:flutter/material.dart';
import 'package:kazek/components/shimmer/shimmer.dart';

class SearchResultShimmer extends StatelessWidget {
  const SearchResultShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Shimmer(
        linearGradient: shimmerGradient,
        child: GridView.builder(
            itemCount: 4,
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 3 / 0.8,
            ),
            itemBuilder: (context, index) {
              return ShimmerLoading(
                isLoading: true,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: height * 0.14,
                    width: width * 0.43,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
