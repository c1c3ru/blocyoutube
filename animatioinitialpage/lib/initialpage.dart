import 'package:flutter/material.dart';

class InitialMenuPage extends StatefulWidget {
  const InitialMenuPage({Key? key}) : super(key: key);

  @override
  _InitialMenuPageState createState() => _InitialMenuPageState();
}

class _InitialMenuPageState extends State<InitialMenuPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // This widget creates the background image of the screen
            PagesBackground(
              mediaQuery: mediaQuery,
              localImage: 'assets/images/green-mountains-background.png',
            ),
            // TODO: Add splash screen between views
            // Buttons for new game, shop, and about
            Column(
              children: <Widget>[
                // Logo at the top of the screen
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: mediaQuery.size.height * 0.33,
                      width: mediaQuery.size.width * 0.82,
                      child: const Image(
                        image: AssetImage('assets/images/grana-logo.png'),
                      ),
                    ),
                  ],
                ),
                // Space between images
                SizedBox(height: mediaQuery.size.height * 0.04),

                // Buttons for new game, shop, and about
                Column(
                  children: [
                    SizedBox(height: mediaQuery.size.height * 0.01),
                    newGameButton(mediaQuery),
                    SizedBox(height: mediaQuery.size.height * 0.01),
                    shopButton(mediaQuery),
                    SizedBox(height: mediaQuery.size.height * 0.01),
                    aboutButton(mediaQuery),
                  ],
                ),
              ],
            ),
            AnimatedImage()
          ],
        ),
      ),
    );
  }

  // Widgets called in the above code

  // Button for starting a new game, leads to "tutorial_page"
  Widget newGameButton(MediaQueryData mediaQuery) {
    return CenteredImageButton(
      mediaQuery: mediaQuery,
      verticalSize: 0.14,
      horizontalSize: 0.68,
      localImage: 'assets/images/new-game-button.png',
      onTap: () {},
    );
  }

  // Button for opening the shop
  Widget shopButton(MediaQueryData mediaQuery) {
    return CenteredImageButton(
      mediaQuery: mediaQuery,
      verticalSize: 0.14,
      horizontalSize: 0.68,
      localImage: 'assets/images/button-about.png',
      onTap: () {},
    );
  }

  // Button for opening the about page
  Widget aboutButton(MediaQueryData mediaQuery) {
    return CenteredImageButton(
      mediaQuery: mediaQuery,
      verticalSize: 0.14,
      horizontalSize: 0.68,
      localImage: 'assets/images/button-store.png',
      onTap: () {},
    );
  }
}

class PagesBackground extends StatelessWidget {
  const PagesBackground({
    super.key,
    required this.mediaQuery,
    required this.localImage,
  });

  final MediaQueryData mediaQuery;
  final String localImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.size.height,
      width: mediaQuery.size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(localImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class CenteredImageButton extends StatelessWidget {
  const CenteredImageButton({
    super.key,
    required this.mediaQuery,
    required this.verticalSize,
    required this.horizontalSize,
    required this.localImage,
    required this.onTap,
  });

  final MediaQueryData mediaQuery;
  final double verticalSize;
  final double horizontalSize;
  final String localImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: mediaQuery.size.height * verticalSize,
            width: mediaQuery.size.width * horizontalSize,
            child: Image(
              image: AssetImage(localImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

/// `AnimatedImage` is a stateful widget that displays an animated image
class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  AnimatedImageState createState() => AnimatedImageState();
}

/// `AnimatedImageState` is a `State` class that uses
/// `SingleTickerProviderStateMixin` to provide a `Ticker` for the
/// `AnimationController` that is used to animate the `Image` widget
class AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset(-1, 0),
    end: Offset(4, 0),
  ).animate(
    CurvedAnimation(parent: _controller, curve: Curves.easeInCirc),
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/cloud.png'),
        const SizedBox(height: 5),
        SlideTransition(
          position: _animation,
          child: Image.asset('assets/images/cloud.png'),
        ),
      ],
    );
  }
}
