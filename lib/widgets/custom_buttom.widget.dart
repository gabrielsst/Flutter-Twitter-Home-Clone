import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  const CustomButtom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 55,
                child: Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(55),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(55),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              );
  }
}