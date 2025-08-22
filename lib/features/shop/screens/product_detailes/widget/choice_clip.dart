import 'package:flutter/material.dart';
import 'package:tech_cart/utils/constants/colorss.dart';
import 'package:tech_cart/utils/helpers/helper_functions.dart';

/// A reusable choice chip widget that can handle both text and color selections
///
/// Features:
/// - Automatically detects if the text represents a color
/// - For colors: Shows circular color picker with opacity effects
/// - For text: Shows traditional choice chip
/// - Customizable selection state and callbacks
class TchoiceClip extends StatelessWidget {
  const TchoiceClip({
    super.key,
    required this.text,
    required this.selected,
    this.onselected,
    this.size = 38.0,
  });

  /// The text/color name to display
  final String text;

  /// Whether this choice is currently selected
  final bool selected;

  /// Callback when the choice is selected/deselected
  final void Function(bool)? onselected;

  /// Size of the color circle (only applies to color choices)
  final double size;

  @override
  Widget build(BuildContext context) {
    final isColorChoice = THelperFunctions.getcolor(text) != null;
    final color = THelperFunctions.getcolor(text);

    // For debugging - let's force color mode for common color names
    final isColorName = [
      'rosegold',
      'green',
      'blue',
      'yellow',
      'purple',
      'orange',
      'pink',
      'cyan',
      'grey',
      'black',
      'white'
    ].contains(text.toLowerCase());

    if (isColorChoice || isColorName) {
      // Get color from helper or use fallback colors
      final actualColor = color ?? _getColorFromName(text);

      // For color choices, create a custom circular container
      return GestureDetector(
        onTap: () => onselected?.call(!selected),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // This ensures perfect circle
            color: actualColor,
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: selected ? 1.0 : 0.5,
            child: selected
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                    size: size * 0.4,
                  )
                : null,
          ),
        ),
      );
    } else {
      // For text choices, use the traditional ChoiceChip
      return ChoiceChip(
        label: Text(text),
        selected: selected,
        onSelected: onselected,
        labelStyle: TextStyle(color: selected ? Tcolors.white : null),
        selectedColor: Tcolors.primary,
      );
    }
  }

  // Helper method to get color from name if THelperFunctions.getcolor fails
  Color _getColorFromName(String colorName) {
    switch (colorName.toLowerCase()) {
      case 'rosegold':
        return const Color.fromARGB(231, 246, 204, 125);
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'purple':
        return Colors.purple;
      case 'orange':
        return Colors.orange;
      case 'pink':
        return Colors.pink;
      case 'cyan':
        return Colors.cyan;
      case 'grey':
        return Colors.grey;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      default:
        return Colors.grey;
    }
  }
}
