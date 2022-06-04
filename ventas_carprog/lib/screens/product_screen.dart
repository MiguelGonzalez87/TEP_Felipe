import 'package:flutter/material.dart';
import 'package:ventas_carprog/screens/screens.dart';
import 'package:ventas_carprog/widgets/product_image.dart';
import 'package:ventas_carprog/ui/input_decorations.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Stack(
             children: [
               ProductImage(),
               Positioned(
                   top: 60,
                   left: 20,
                   child: IconButton(
                     onPressed: () => Navigator.of(context).pop(),
                     icon: Icon(Icons.arrow_back_ios, size: 40, color: Colors.white),
                   )
               ),

               Positioned(
                   top: 60,
                   right: 20,
                   child: IconButton(
                     onPressed: () {
                       // Para uso de camara o galeria
                     },
                     icon: Icon(Icons.camera_alt_outlined, size: 40, color: Colors.white),
                   )
               )
             ],
           ),

           _ProductForm(),
           SizedBox( height: 100,)
         ],
       ),
     ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save_alt_outlined),
          onPressed: () {
            //TODO: Guardar producto
          }
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
      //height: 200,
      decoration: _buildBoxDecoration(),
        child: Form(
          child: Column(
            children: [
              //

              //Código del Producto
              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                  hintText: 'Clave del Producto',
                  labelText: 'Código',
                  prefixIcon: Icons.ad_units
                ),
              ),
              SizedBox(height: 30),

              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Descripción del Producto',
                    labelText: 'Descripción',
                    prefixIcon: Icons.ad_units
                ),
              ),
              SizedBox( height: 10),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Precio del Producto',
                    labelText: 'Precio',
                    prefixIcon: Icons.ad_units
                ),
              ),
              SizedBox( height: 10),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Cantidad del Producto',
                    labelText: 'Cantidad',
                    prefixIcon: Icons.ad_units
                ),
              ),
              SizedBox( height: 10),

              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Gaveta de Producto',
                    labelText: 'Gaveta',
                    prefixIcon: Icons.ad_units
                ),
              ),
              SizedBox( height: 10),
              
              SwitchListTile.adaptive(
                  value: true,
                  title: Text('Disponible'),
                  activeColor: Colors.indigo,
                  onChanged: (value){
                    // TODO: Pendiente
                  }
              ),

            ],
          ),

        ),
    ),
    );

  }
  BoxDecoration _buildBoxDecoration() => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        offset: Offset(0,5),
        blurRadius: 5
      )
    ]
      );
}

