import 'package:flutter/material.dart';

class DetailScreenLugar extends StatefulWidget {
  const DetailScreenLugar(
      {Key? key,
      required this.asset,
      required this.tag,
      required this.fullDesc,
      required this.descoment,
      required this.contacto1,
      this.contacto2 = '',
      this.contacto3 = ''})
      : super(key: key);
  final String asset;
  final String tag;
  final String fullDesc;
  final String descoment;
  final String contacto1;
  final String contacto2;
  final String contacto3;

  @override
  State<DetailScreenLugar> createState() => _DetailScreenLugarState();
}

class _DetailScreenLugarState extends State<DetailScreenLugar> {
  double screenWidth = 0;
  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.tag,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                child: SizedBox(
                  height: screenHeight / 2.2,
                  width: screenWidth,
                  child: Image.network(
                    //"lib/images/${widget.asset}",
                    "http://10.0.2.2:3000/optimize/${widget.asset}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 20,
              ),
              child: Text(
                widget.tag,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
              ),
              child: Text(
                ' ${widget.fullDesc}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 15,
              ),
              child: const Text(
                "Nombre Científico",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 10,
              ),
              child: Text(
                widget.descoment,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 15,
              ),
              child: const Text(
                "Estado de Conservación",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 5,
              ),
              child: Text(
                widget.contacto1,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 5,
              ),
              child: Text(
                widget.contacto2,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
                vertical: 10,
              ),
              child: Text(
                widget.contacto3,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
