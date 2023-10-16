import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
import 'package:flutter_application_1/text_styled.dart';

const startAlignmet = Alignment
    .bottomRight; // burada değişken türü değiştirmeyeceğimizi biliyorsak var yerine final kullanmak daha mantıklı olur ama direkt kitlendiği işlemlerin olduğu bie şeyse o zaman const kullanmak daha mantıklı olur
const endtAlignmet = Alignment
    .topLeft; // burada değişken türü değiştirmeyeceğimizi biliyorsak var yerine final kullanmak daha mantıklı olur

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  const GradientContainer.purple()
      : color1 = Colors.lightGreen,
        color2 = Colors.amberAccent;

  final Color color1;
  final Color color2;

/* [
            Color.fromARGB(255, 164, 249, 6),
            Color.fromARGB(255, 255, 214, 7)
          ] */

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignmet,
          end: endtAlignmet,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

/* 
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignmet,
          end: endtAlignmet,
        ),
      ),
      child: const Center(
        child: StyledText(
          'Hello World!',
        ),
      ),
    );
  }
}
 */
/* 
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

/* [
            Color.fromARGB(255, 164, 249, 6),
            Color.fromARGB(255, 255, 214, 7)
          ] */

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignmet,
          end: endtAlignmet,
        ),
      ),
      child: const Center(
        child: StyledText(
          'Hello World!',
        ),
      ),
    );
  }
}
 */