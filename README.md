# Keyboard Numbers

`keyboard_numbers` is a Flutter package that provides a customizable numeric keyboard widget. This widget is useful for applications that require numeric input, such as calculators, PIN entry screens, or data entry forms.

## Features

- Customizable button colors, shapes, and text styles
- Optional backspace (clear) button customization
- Support for custom input length



## Fields

- The keyboardNumbers widget provides several customization options:

- controller: The TextEditingController to handle input text.
- length: The maximum number of digits allowed in the input. Default is no limit.
- clearColor: The background color of the clear (backspace) button.
- clearTextColor: The text color of the clear button.
- textColor: The text color for numeric buttons.
- borderSize: The border radius size for buttons.
- backgroundColor: The background color for numeric buttons.
- isCircle: If true, buttons will be circular.
- fontSize: The font size of the button text


## Example 
- keyboardNumbers(
  controller: controller,
  length: 6,
  clearColor: Colors.red,
  clearTextColor: Colors.white,
  textColor: Colors.black,
  borderSize: 10.0,
  isCircle: false,
  fontSize: 20.0,
  backgroundColor: Colors.lightBlue,
)