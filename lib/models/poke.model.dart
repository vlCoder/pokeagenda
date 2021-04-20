import 'package:flutter/material.dart';

class PokeModel{

final String id;
final String number;
final String name;
final String image;

PokeModel(
   { @required this.id,
    @required this.number,
    @required this.name,
    this.image
  }
);

 static PokeModel fromJson( Map<String, dynamic> json){
   PokeModel p = PokeModel(
      id: json['id'],
      number: json['number'],
      name: json['name'],
      image: json['image'],
    );

    return p; 
  }

  String toString(){
    return """{
      id: $id,
      number: $number,
      name: $name,
      imagem: $image
    }""";
  }
}