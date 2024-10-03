import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Scroll",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  "https://www.google.com/imgres?q=sofa%20set%20aspect%20ratio%201%3A1&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F51acyx9m89L._AC_UF894%2C1000_QL80_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FWoodsfreak-Desinger-Standard-Durable-Dinning%2Fdp%2FB0C9X8XTVL&docid=dVu4moNpi_TEXM&tbnid=OB5Xl8v4nog7-M&vet=12ahUKEwjQqOGd6vKIAxUvhlYBHTNnA_YQM3oFCIIBEAA..i&w=894&h=651&hcb=2&ved=2ahUKEwjQqOGd6vKIAxUvhlYBHTNnA_YQM3oFCIIBEAA"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Image.network(
                  "https://www.google.com/imgres?q=sofa%20set%20aspect%20ratio%201%3A1&imgurl=http%3A%2F%2F5.imimg.com%2Fdata5%2FECOM%2FDefault%2F2022%2F12%2FWX%2FFG%2FOE%2F126014078%2Fquinn-3-piece-suite-in-maison-ocean-ghsf0034-500x500.jpg&imgrefurl=https%3A%2F%2Fm.indiamart.com%2Fproddetail%2Fgharnih-straight-way-3-1-1-sofa-set-ghsf0034-24064104588.html&docid=OtNDIMLoQjT4LM&tbnid=z_DqbgjODvQipM&vet=12ahUKEwjQqOGd6vKIAxUvhlYBHTNnA_YQM3oECD8QAA..i&w=500&h=500&hcb=2&ved=2ahUKEwjQqOGd6vKIAxUvhlYBHTNnA_YQM3oECD8QAA"),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ30L0YsBt7CP5ZQTNJP91b7NPsIVrf3YlApg&s"),
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
