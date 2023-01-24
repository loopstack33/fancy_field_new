// ignore_for_file: must_be_immutable

library fancy_field_new;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFancyField extends StatelessWidget {
  TextEditingController? controller;
  TextStyle? textStyle;
  TextStyle? hintStyle;
  Color fieldColor;
  double? width;
  double? height;
  String hint;
  bool? align;
  int? maxLines;
  bool? absorbing;
  bool? obscure;
  Widget? suffixIcon;
  Widget? prefixIcon;
  Color? borderColor;
  TextInputType? type;
  double? borderRadius;
  bool? hasBorder;
  List<TextInputFormatter>? inputFormatters;
  Function(String)? onChanged;

  MyFancyField({Key? key,this.borderRadius,
    required this.fieldColor,
    this.hasBorder,this.borderColor,
    this.obscure,
    this.height,
    this.align,
    this.onChanged,
    this.absorbing,
    this.maxLines,
    this.suffixIcon,
    this.prefixIcon,
    this.type,
    this.textStyle,
    this.hintStyle,
    this.width,
    this.controller,
    this.inputFormatters,
    required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?? MediaQuery.of(context).size.width*0.9,
      height:height?? 50,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(borderRadius??10),
          border:hasBorder!=null? Border.all(color:borderColor?? Colors.black.withOpacity(0.25),width: 1):null
      ),
      child: AbsorbPointer(
        absorbing: absorbing ?? false,
        child: TextFormField(
          textAlignVertical: align == null ? null : TextAlignVertical.center,
          onChanged: onChanged,
          style:textStyle?? const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          obscureText: obscure?? false,
          controller: controller,
          textInputAction: TextInputAction.done,
          inputFormatters: inputFormatters,
          maxLines: maxLines ?? 1,
          keyboardType: type ?? TextInputType.text,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            isDense: true,
            fillColor: Colors.white,
            filled: true,
            hintText: hint,
            hintStyle:hintStyle?? const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color:borderColor?? Colors.white, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color:borderColor?? Colors.white, width: 1)),
          ),
        ),
      ),
    );
  }
}


