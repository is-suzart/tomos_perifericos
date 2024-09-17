import 'package:flutter/material.dart';

class Book extends StatefulWidget
{
    const Book({super.key, required this.img, required this.col});

    final String img;
    final int col;
    @override
    State<Book> createState() => BookState();
}

class BookState extends State<Book>
{
    @override
    Widget build(BuildContext context)
    {
        double screenWidth = MediaQuery.of(context).size.width;
        return Card(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                    Container(
                        height: screenWidth / widget.col,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(image: NetworkImage(widget.img),fit: BoxFit.cover)
                        )),
                    Padding( // Adicione padding ao redor do texto
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Center(
                                    child: Text(
                                        "Socialismo Traído",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall! // Use headlineSmall para um texto menor
                                            .copyWith(color: Colors.black)
                                    )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("R 2,00 / semana",style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Theme.of(context).primaryColor),),
                                    Text("fotinha")
                                  ],
                                )
                            ]
                        )
                    )
                ]
            )
        );
    }
}
