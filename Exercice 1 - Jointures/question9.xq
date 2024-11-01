(: Noms des clients qui ont commandé des livres de science-fiction. :)

for $client in doc ("../Donnees/customers.xml") //customer

return

    if
    (
        
        doc ("../Donnees/orders.xml")
        
        //order
        [
            customer
            /@id
            =
            $client
            /@id
        ]
        
        /book
        [
            @id
            =
            doc ("../Donnees/books.xml")
            //book
            [
                genre
                =
                "Science Fiction"
            ]
            /@id
        ]
        
    )
    
    then
    (
        
        $client
        /name
        /text ()
        
    )
