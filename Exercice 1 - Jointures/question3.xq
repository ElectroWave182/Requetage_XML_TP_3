(: Noms distincts des clients qui ont commandé un ou plusieurs livres (utiliser la fonction distinct-values et formuler la condition de jointure à l’aide d’un prédicat de chemin). :)

let $client :=
    doc ("../Donnees/customers.xml")
    //customer
    
        (: S'il existe une commande de livre :)
        [@id =
            doc ("../Donnees/orders.xml")
            //order [book]
            /customer
            /@id
        ]
        
    /name
    /text ()

return $client
