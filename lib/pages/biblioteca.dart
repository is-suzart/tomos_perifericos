import 'package:flutter/material.dart';
import 'package:tomos_perifericos/components/card.dart';

class Biblioteca extends StatefulWidget
{
    const Biblioteca({super.key,required this.columns});

    final int columns;

    @override
    BibliotecaState createState() => BibliotecaState();
}

class BibliotecaState extends State<Biblioteca>
{
    int _counter = 0;

    void _incrementCounter()
    {
        setState(()
            {
                _counter++;
            }
        );
    }

    @override
    Widget build(BuildContext context)
    {
        return  Column(
            children: [
                Expanded(
                    child: GridView.count(
                        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                        shrinkWrap: true,
                        childAspectRatio: 9/16,
                        crossAxisCount: widget.columns, // Número de colunas
                        crossAxisSpacing: 10, // Espaçamento entre colunas
                        mainAxisSpacing: 10, // Espaçamento entre linhas
                        children: const [
                            Book(img: "https://igrejaunasp.com/api/wp-content/uploads/2024/05/Makarios-BG-1200x675-1.jpg"),
                            Book(img: "https://m.media-amazon.com/images/I/81f18IFrpiL._AC_UF1000,1000_QL80_.jpg"),
                            Book(img: "https://www.jurua.com.br/images/prod/b/26/26797.jpg?ts=20201218"),
                            Book(img: "https://marketplace.canva.com/EAE4oJOnMh0/1/0/1003w/canva-capa-de-livro-de-suspense-O7z4yw4a5k8.jpg"),
                            Book(img: "https://igrejaunasp.com/api/wp-content/uploads/2024/05/Makarios-BG-1200x675-1.jpg"),
                            Book(img: "https://odgraph.com.br/wp-content/uploads/2020/03/maquete-de-uma-capa-de-livro_117023-1303.jpg"),
                            Book(img: "https://igrejaunasp.com/api/wp-content/uploads/2024/05/Makarios-BG-1200x675-1.jpg"),
                            Book(img: "https://m.media-amazon.com/images/I/81f18IFrpiL._AC_UF1000,1000_QL80_.jpg"),
                            Book(img: "https://www.jurua.com.br/images/prod/b/26/26797.jpg?ts=20201218")
                        ]
                    )
                )
            ]
        );
    }
}
