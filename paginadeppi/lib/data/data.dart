import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/models.dart';


const Content ifce =  Content(
  name: 'IFCE',
  imageUrl: Assets.imagesIfceMaracanau,
  titleImageUrl: Assets.imagesIfceMaracanau,
  description:
  'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

const  List<Content> previews =  [
  Content(
    name: 'Pesquisa',
    imageUrl: Assets.imagesPesquisa,
    color: Colors.orange,
    description:'',
  ),
  Content(
    name: 'Extensão',
    imageUrl: Assets.imagesExtensao,
    color: Colors.red,
    description:'',
  ),
  Content(
    name: 'Inovação',
    imageUrl: Assets.imagesInovacao,
    color: Colors.yellow,
    description:'',
  ),
  Content(
    name: 'Pós-graduação',
    imageUrl: Assets.imagesGraduacao,
    color: Colors.lightBlueAccent,
    description:'',
  ),
  Content(
    name: 'Sobre',
    imageUrl: Assets.imagesGraduacao,
    color: Colors.green,
    description:'',
  ),
];

List<Content> pesquisa =  [
  const Content(name: 'Pesquisa', imageUrl: Assets.imagesPesquisa),

];

List<Content> extensao =  [
  const Content(name: 'Extensão', imageUrl: Assets.imagesExtensao),

];

List<Content> inovacao =  [
  const Content(name: 'Inovação', imageUrl: Assets.imagesInovacao),

];
List<Content> pos = const [
  Content(name: 'Pós-gradução', imageUrl: Assets.imagesGraduacao),

];

List<Content> sobre =  [
  const Content(name: 'Sobre', imageUrl: Assets.imagesGraduacao),

];
