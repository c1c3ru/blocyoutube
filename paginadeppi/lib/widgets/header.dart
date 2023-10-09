import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:paginadeppi/widgets/responsive.dart';

import '../models/models.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({Key? key, required this.featuredContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _ContentHeaderMobile(
        featuredContent: featuredContent,
      ),
      desktop: _ContentHeaderDesktop(
        featuredContent: featuredContent,
      ),
    );
  }
}

class _ContentHeaderMobile extends StatefulWidget {
  final Content featuredContent;

  const _ContentHeaderMobile({Key? key, required this.featuredContent})
      : super(key: key);

  @override
  State<_ContentHeaderMobile> createState() => _ContentHeaderMobileState();
}

class _ContentHeaderMobileState extends State<_ContentHeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          AnimatedCrossFade(
            firstChild: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                height: 500.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.featuredContent.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            secondChild: Positioned(
              bottom: 110,
              child: SizedBox(
                width: 250,
                child: Image.asset(widget.featuredContent.titleImageUrl!),
              ),
            ),
            crossFadeState: CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 500),
          ),
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   bottom: 40,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _ContentHeaderDesktop extends StatefulWidget {
  final Content featuredContent;

  const _ContentHeaderDesktop({Key? key, required this.featuredContent})
      : super(key: key);

  @override
  State<_ContentHeaderDesktop> createState() => _ContentHeaderDesktopState();
}

class _ContentHeaderDesktopState extends State<_ContentHeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            widget.featuredContent.imageUrl,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: -1,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -1,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
            ),
          ),
          Positioned(
            left: 60,
            right: 60,
            bottom: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Image.asset(widget.featuredContent.titleImageUrl!),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.featuredContent.description!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2.0, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Row(
                //   children: [
                //     const SizedBox(
                //       width: 16,
                //     ),
                //     TextButton.icon(
                //       style: ButtonStyle(
                //         backgroundColor:
                //             MaterialStateProperty.all(Colors.white),
                //         padding: MaterialStateProperty.all(
                //           const EdgeInsets.fromLTRB(25, 10, 30, 10),
                //         ),
                //       ),
                //       onPressed: () => log('More Info'),
                //       icon: const Icon(
                //         Icons.info_outline,
                //         size: 30,
                //       ),
                //       label: const Text(
                //         'More Info',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 20,
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
