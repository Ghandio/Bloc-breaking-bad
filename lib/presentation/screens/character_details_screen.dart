// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:breakingbloc/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:breakingbloc/data/models/characters.dart' as chr;

class CharacterDetailsScreen extends StatelessWidget {
  final chr.Characters character;

  CharacterDetailsScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      characterinfo('Job : ', character.jobs.join(' / ')),
                      buildDivider(315),
                      characterinfo('Appeared in : ', character.seriesCategory),
                      buildDivider(250),
                      character.seasonAppearance.isEmpty
                          ? Container()
                          : characterinfo('Seasons : ',
                              character.seasonAppearance.join(' / ')),
                      character.seasonAppearance.isEmpty
                          ? Container()
                          : buildDivider(280),
                      characterinfo('Status : ', character.statusIfDeadOrAlive),
                      buildDivider(300),
                      character.betterCallSaulAppearance.isEmpty
                          ? Container()
                          : characterinfo('Better Call Saul Seasons : ',
                              character.betterCallSaulAppearance.join(' / ')),
                      character.betterCallSaulAppearance.isEmpty
                          ? Container()
                          : buildDivider(150),
                      characterinfo('Actor/Actress : ', character.actorName),
                      buildDivider(235),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.nickName,
          style: TextStyle(
            color: MyColors.myWhite,
          ),
          textAlign: TextAlign.start,
        ),
        background: Hero(
          tag: character.charId,
          child: Image.network(
            character.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget characterinfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(children: [
        TextSpan(
          text: title,
          style: TextStyle(
            color: MyColors.myWhite,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        TextSpan(
          text: value,
          style: TextStyle(
            color: MyColors.myWhite,
            fontSize: 16,
          ),
        )
      ]),
    );
  }

  Widget buildDivider(double endIndent) {
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,
    );
  }
}
