import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme.titleLarge;
    return SafeArea(
      bottom: false,
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Icon(
              Icons.movie_outlined,
              color: colors.primary,
              size: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'MovieBuzz',
              style: textStyle,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
      ),
    ));
  }
}
