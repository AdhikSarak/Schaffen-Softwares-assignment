import 'package:flutter/material.dart';
import 'package:silverappbar/components/colors.dart';
import 'package:velocity_x/velocity_x.dart';

const dolorIpsum =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

Widget tagButton(String label) {
  return label.text.size(11).color(pinkColor).make().box.white.border(color: pinkColor).rounded.padding(const EdgeInsets.symmetric(horizontal: 15, vertical: 3)).make();
}

Widget myButton(String label) {
  return label.text.size(11).white.make().box.color(pinkColor).border(color: pinkColor).rounded.padding(const EdgeInsets.symmetric(horizontal: 15, vertical: 3)).make();
}