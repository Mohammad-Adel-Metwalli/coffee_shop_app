import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/styles.dart';

class EmailTextFormField extends StatefulWidget
{
  const EmailTextFormField({super.key, this.onFieldSubmitted, this.onChanged});
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;

  @override
  State<EmailTextFormField> createState() => _EmailTextFormFieldState();
}

class _EmailTextFormFieldState extends State<EmailTextFormField>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: TextFormField(
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onFieldSubmitted,
          validator: (data)
          {
            if(data!.isEmpty)
            {
              return 'ادخِل البريد الإلكتروني';
            }
            return null;
          },
          cursorColor: brown,
          cursorRadius: const Radius.circular(20),
          style: Styles.inputText,
          decoration: InputDecoration(
            errorStyle: Styles.errorStyle,
            prefixIcon: const Icon(Iconsax.coffee_bold, color: brown),
            enabledBorder: Styles.customedOutlineInputBorder(),
            focusedBorder: Styles.customedOutlineInputBorder(),
            focusedErrorBorder: Styles.customedOutlineInputErrorBorder(),
            errorBorder: Styles.customedOutlineInputErrorBorder(),
            border: Styles.customedOutlineInputBorder(),
            label: Text('البريد الإلكتروني', style: Styles.textFormFieldsStyle),
            fillColor: babyPowder,
            filled: true,
          ),
        ),
      ),
    );
  }
}