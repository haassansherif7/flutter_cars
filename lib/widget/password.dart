import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/widget/fonts.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  PasswordField({super.key, this.onChanged});
  Function(String)? onChanged;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool showpassword = false;
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
        onChanged: widget.onChanged,
        obscureText: !this.showpassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 30),
          border: InputBorder.none,
          hintText: 'password',
          hintStyle: Kbody,
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: this.showpassword ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              setState(() => this.showpassword = !this.showpassword);
            },
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.password,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        style: Kbody,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
