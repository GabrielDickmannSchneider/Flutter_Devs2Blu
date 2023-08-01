import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';

class Pessoa {
  String nome;
  late ImageProvider imagem;
  List<String> imagens = [
    "https://i.pinimg.com/originals/a1/0a/f8/a10af829e13b74078bb5a438e2d4f3c4.jpg",
    "https://pbs.twimg.com/profile_images/1326134152513662977/m2rj6M6r_400x400.jpg",
    "https://i.pinimg.com/736x/57/dc/b9/57dcb92d05a1325f7b851186397c34f3.jpg",
    "https://i.pinimg.com/originals/36/cf/17/36cf17e353812867462b88b7006e085f.jpg",
    "https://wompampsupport.azureedge.net/fetchimage?siteId=7575&v=2&jpgQuality=100&width=700&url=https%3A%2F%2Fi.kym-cdn.com%2Fphotos%2Fimages%2Fnewsfeed%2F001%2F700%2F562%2F659.jpg",
    "https://openseauserdata.com/files/a2948cd3d12798cd66bb8f890fe726e8.png",
    "https://i.kym-cdn.com/photos/images/original/001/700/569/1c4.jpg",
    "https://i.pinimg.com/originals/5b/42/87/5b42873021e486de3b2ab9cdbd761b95.jpg",
    "https://i.kym-cdn.com/photos/images/newsfeed/001/701/586/80c.jpg",
    "https://i.kym-cdn.com/photos/images/newsfeed/001/701/657/339.jpg",
    "https://i.kym-cdn.com/photos/images/newsfeed/001/701/582/566.jpg",
    "https://i.kym-cdn.com/photos/images/newsfeed/001/701/988/50d.jpg",
    "https://i.kym-cdn.com/photos/images/newsfeed/001/701/580/24c.jpg",
    "https://i.kym-cdn.com/photos/images/newsfeed/001/701/659/046.jpg",
    "https://i.pinimg.com/736x/9e/8e/c3/9e8ec3c525194846c3b360a6095d5f37.jpg",
  ];

  Pessoa({required this.nome}) {
    this.imagem = CachedNetworkImageProvider(pegarUrlImagemAleatoria());
  }

  String pegarUrlImagemAleatoria() {
    final random = Random();
    final randomIndex = random.nextInt(imagens.length);
    return imagens[randomIndex];
  }
}