import 'package:flutter/material.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';

class TsimpleField extends StatelessWidget {
  final hintText;
  final heading;
  final height;
  final width;
  final TextEditingController? controller;

  TsimpleField(
      {super.key,
      required this.hintText,
      required this.heading,
      required this.height,
      required this.width,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              heading,
              style: Theading,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(9),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: hintText,
                hintStyle: label),
          )
        ],
      ),
    );
  }
}

class TPasswordField extends StatefulWidget {
  final String hintText;
  final String heading;
  final double height;
  final double width;
  final TextEditingController? controller;

  const TPasswordField({
    super.key,
    required this.hintText,
    required this.heading,
    required this.height,
    required this.width,
    this.controller,
  });

  @override
  State<TPasswordField> createState() => _TPasswordFieldState();
}

class _TPasswordFieldState extends State<TPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              widget.heading,
              style: Theading,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: widget.controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: widget.hintText,
              hintStyle: label,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TreadonlyField extends StatelessWidget {
  final String hintText;
  final String heading;
  final double height;
  final double width;
  final IconData icon;
  final Function onTap;
  // final TextEditingController? controller;

  const TreadonlyField(
      {super.key,
      required this.hintText,
      required this.heading,
      required this.height,
      required this.width,
      required this.icon,
      required this.onTap
      // this.controller,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              heading,
              style: Theading,
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            child: TextField(
              // controller: controller,
              readOnly: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: hintText,
                hintStyle: label,
                suffixIcon: Icon(
                  icon,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TDescriptionField extends StatelessWidget {
  final String hintText;
  final String heading;
  final double height;
  final double width;
  final TextEditingController? controller;
  final int maxLines;

  const TDescriptionField({
    super.key,
    required this.hintText,
    required this.heading,
    required this.height,
    required this.width,
    this.controller,
    this.maxLines = 5,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              heading,
              style: Theading,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: label,
              alignLabelWithHint: true,
            ),
          ),
        ],
      ),
    );
  }
}
