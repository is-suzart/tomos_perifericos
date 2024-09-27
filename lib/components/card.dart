import 'package:flutter/material.dart';

class Book extends StatefulWidget
{
    const Book({super.key, required this.img});

    final String img;
    @override
    State<Book> createState() => BookState();
}

class BookState extends State<Book>
{
    @override
    Widget build(BuildContext context)
    {
        return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
                onTap: () => {},
                child: Card(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                            AspectRatio(aspectRatio: 8/11,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(widget.img,fit: BoxFit.cover)
                                )),
                            Expanded( // Adicione padding ao redor do texto

                                child: Padding(
                                    padding: const EdgeInsets.all(16.0),
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
                                                    Text("R\$ 2,00 / semana",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).primaryColor)),
                                                    //Text("fotinha")
                                                    const Icon(Icons.person,weight: 200)
                                                ]
                                            )
                                        ]
                                    ))
                            )
                        ]
                    )
                )
            )
        );
    }
}
