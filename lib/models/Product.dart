import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "SAMSUNG A10",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/samsung1.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 2,
      title: "SAMSUNG S10",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/samsung6.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 3,
      title: "SAMSUNG A71",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/samsung7.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 4,
      title: "REALME 7",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/realme1.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 5,
      title: "REALME NARZO",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/realme2.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 6,
      title: "REALME GT",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/realme3.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 7,
      title: "IPHONE 14",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/apple6.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 8,
      title: "IPHONE 13",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/apple2.png",
      color: Color(0xFFFFFFFF)),
  Product(
      id: 9,
      title: "IPHONE X",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/apple9.png",
      color: Color(0xFFFFFFFF)),
  Product(
    id: 10,
    title: "VIVO Z10",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/vivo3.png",
    color: Color(0xFFFFFFFF),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
