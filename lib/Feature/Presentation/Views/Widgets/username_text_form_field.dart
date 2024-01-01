import 'package:flutter/material.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/styles.dart';

class UsernameTextFormField extends StatefulWidget
{
  const UsernameTextFormField({
    super.key, this.onFieldSubmitted, this.onChanged,
  });
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;

  @override
  State<UsernameTextFormField> createState() => _UsernameTextFormFieldState();
}

class _UsernameTextFormFieldState extends State<UsernameTextFormField>
{
  @override
  Widget build(BuildContext context)
  {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: TextFormField(
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            validator: (data)
            {
              if(data!.isEmpty)
              {
                return 'ادخِل اسم المستخدم';
              }
              return null;
            },
            cursorColor: brown,
            cursorRadius: const Radius.circular(20),
            style: Styles.userInputText,
            decoration: InputDecoration(
              errorStyle: Styles.errorStyle,
              prefixIcon: const Icon(Icons.coffee, color: brown),
              enabledBorder: Styles.customedOutlineInputBorder(),
              focusedErrorBorder: Styles.customedOutlineInputErrorBorder(),
              errorBorder: Styles.customedOutlineInputErrorBorder(),
              focusedBorder: Styles.customedOutlineInputBorder(),
              border: Styles.customedOutlineInputBorder(),
              label: Text('اسم المستخدم', style: Styles.textFormFieldsStyle),
              fillColor: babyPowder,
              filled: true,
            ),
          ),
        ),
      ),
    );
  }
}