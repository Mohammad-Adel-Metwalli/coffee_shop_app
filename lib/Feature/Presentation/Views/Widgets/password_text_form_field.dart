import 'package:coffee_shop_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';

class PasswordTextFormField extends StatefulWidget
{
  const PasswordTextFormField({super.key, this.onFieldSubmitted, this.onChanged,});
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField>
{
  bool hide = true;

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
              return 'ادخِل كلمة السر';
            }
            return null;
          },
          cursorColor: brown,
          obscureText: hide ? true : false,
          cursorRadius: const Radius.circular(20),
          style: Styles.inputText,
          decoration: InputDecoration(
            errorStyle: Styles.errorStyle,
            prefixIcon: const Icon(Icons.coffee_maker, color: brown),
            suffixIcon: hide ? GestureDetector(onTap: () => setState(() => hide = !hide), child: const Icon(FontAwesome.eye_solid, color: brown)) : GestureDetector(onTap: () => setState(() => hide = !hide), child: const Icon(FontAwesome.eye_slash_solid, color: brown)),
            enabledBorder: Styles.customedOutlineInputBorder(),
            focusedBorder: Styles.customedOutlineInputBorder(),
            focusedErrorBorder: Styles.customedOutlineInputErrorBorder(),
            errorBorder: Styles.customedOutlineInputErrorBorder(),
            border: Styles.customedOutlineInputBorder(),
            label: Text('كلمة السر', style: Styles.textFormFieldsStyle),
            fillColor: babyPowder,
            filled: true,
          ),
        ),
      ),
    );
  }
}