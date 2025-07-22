import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/widget/fonts.dart';

// ignore: must_be_immutable
class EmailFeild extends StatelessWidget {
  EmailFeild({super.key, this.onChanged});
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[600]?.withOpacity(0.5),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return ('field is required');
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 30),
          border: InputBorder.none,
          hintText: 'Email',
          hintStyle: Kbody,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.email,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        style: Kbody,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
