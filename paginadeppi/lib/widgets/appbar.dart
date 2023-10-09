import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:paginadeppi/widgets/responsive.dart';
import '../generated/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.scrollOffset = 0.0}) : super(key: key);
  final double scrollOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color:
      Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: const Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.imagesLogoifce),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: _AppBarButton(
                    title: 'Pesquisa',
                    onTap: () => log('Pesquisa'),
                  ),
                ),
                GestureDetector(
                  child: _AppBarButton(
                    title: 'Extensão',
                    onTap: () => log('Extensão'),
                  ),
                ),
                GestureDetector(
                  child: _AppBarButton(
                    title: 'Inovação',
                    onTap: () => log('Inovação'),
                  ),
                ),GestureDetector(
                  child: _AppBarButton(
                    title: 'Pós-graduação',
                    onTap: () => log('Pós-graduação'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.imagesLogoifce2),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // _AppBarButton(
                //   title: 'Home',
                //   onTap: () => log('My List'),
                // ),
                // _AppBarButton(
                //   title: 'TV Shows',
                //   onTap: () => log('TV Shows'),
                // ),
                // _AppBarButton(
                //   title: 'Movies',
                //   onTap: () => log('Movies'),
                // ),
                // _AppBarButton(
                //   title: 'Latest',
                //   onTap: () => log('My List'),
                // ),
                // _AppBarButton(
                //   title: 'My List',
                //   onTap: () => log('My List'),
                // ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 28,
                  onPressed: () => log('Search'),
                ),
                // _AppBarButton(
                //   title: 'Kids',
                //   onTap: () => log('Kids'),
                // ),
                // _AppBarButton(
                //   title: 'DVD',
                //   onTap: () => log('DVD'),
                // ),
                // IconButton(
                //   padding: EdgeInsets.zero,
                //   icon: const Icon(Icons.card_giftcard),
                //   color: Colors.white,
                //   iconSize: 28,
                //   onPressed: () => log('Gift'),
                // ),
                // IconButton(
                //   padding: EdgeInsets.zero,
                //   icon: const Icon(Icons.notifications),
                //   color: Colors.white,
                //   iconSize: 28,
                //   onPressed: () => log('Notifications'),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  const _AppBarButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
