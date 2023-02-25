import 'package:flutter/material.dart';

import 'custom_iconBotton.dart';

class CustomTopbar extends StatelessWidget {
  const CustomTopbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      width: double.maxFinite,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Searsh product",
                  prefixIcon: Icon(Icons.search_outlined),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const CustomIconBotton(imagePath: "assets/icons/Cart Icon.svg"),
          const SizedBox(
            width: 10,
          ),
          const CustomIconBotton(imagePath: "assets/icons/Bell.svg"),
        ],
      ),
    );
  }
}
