import 'package:findit/widgets/vertical_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: SearchInput(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: _popularesTittle(context),
                ),
                SizedBox(
                  height: 210,
                  width: Get.width,
                  child: const CardHorizontalSwiper(),
                ),
                _ultimosServiciosTittle(context),
                SizedBox(
                  width: Get.width,
                  height: Get.height * 0.55,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      HorizontalCard(),
                      HorizontalCard(),
                      HorizontalCard(),
                      HorizontalCard(),
                      HorizontalCard(),
                      HorizontalCard(),
                      HorizontalCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Padding _ultimosServiciosTittle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Últimos servicios",
            style: Theme.of(context).textTheme.headline2,
          ),
          const Text('Ver todos', style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Text _popularesTittle(BuildContext context) {
    return Text(
      "Populares",
      style: Theme.of(context).textTheme.headline2,
    );
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: 80,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hola Roger",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Encuentra los servicios cercanos",
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
          ],
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 25),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red,
          ),
        )
      ],
    );
  }
}

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(children: [
        const ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
          child: Image(
            image: AssetImage('assets/cuarto.png'),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Software Dev",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                const Text(
                    "Desarrollo de software a la medida para cubrir la necesidad del negocio",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.laptop,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.support_agent,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.settings_suggest,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class CardHorizontalSwiper extends StatelessWidget {
  const CardHorizontalSwiper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: const [
        VerticalCard(),
        VerticalCard(),
        VerticalCard(),
        VerticalCard(),
        VerticalCard(),
        VerticalCard(),
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 0),
                color: Color.fromRGBO(0, 0, 0, 0.25))
          ]),
      child: TextFormField(
          //queda poner el cursor un poco mas grande.
          cursorHeight: 28,
          style: const TextStyle(fontSize: 20, color: Colors.black54),
          decoration: const InputDecoration(
            hintText: "Buscar Servicio",
            hintStyle: TextStyle(color: Colors.black54, fontSize: 20),
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.search, size: 35, color: Colors.black54),
          )),
    );
  }
}
