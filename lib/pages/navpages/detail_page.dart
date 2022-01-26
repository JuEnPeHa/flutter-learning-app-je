import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/responsive_button.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.33,
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/images/backgroundGradient/(1).jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: blueNEAR,
                  )
                ],
              ),
            ),
            Positioned(
              top: 125,
              child: Container(
                padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 500,
                decoration: BoxDecoration(
                  color: Vx.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ejemplo Dapplets \× NEAR",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            );
                          }),
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(color: Vx.blue700, fontSize: 18),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                              "El ejemplo Dapplets × NEAR es un Dapplet (una aplicación de aumento) que puede analizar publicaciones de Twitter y almacenarlas en el contrato NEAR. También puede mostrar sus tweets guardados en una página superpuesta.",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Text(
                            "1. Introducción",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '''
                      Dapplets: aplicaciones que interactúan con páginas web, aumentandolas insertando diferentes widgets, analizan los datos de las páginas y agregan algunas funcionalidades nuevas. Pueden mejorar la experiencia del usuario cuando utiliza redes sociales, servicios de video y otras fuentes.
                      Los Dapplets usan la extensión que estamos creando. Esta extensión ofrece una API simple para desarrolladores de dapplets y grandes habilidades para la comunidad de dapplets. Nuestra plataforma es descentralizada. Usamos las redes NEAR y Ethereum para nuestros registros y contratos. También utilizamos almacenamientos descentralizados, como Swarm, IPFS y SIA para alojar código dapplets y archivos multimedia.
                      ''',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ResponsiveButton(
                      isResponsive: true,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
