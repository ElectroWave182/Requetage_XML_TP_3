(: Noms des clients distincts qui ont commandé des livres (utiliser la fonction exists et, à partir de maintenant, formuler toute condition de jointure à l’aide d’une clause where sauf si c’est explicitement demandé). Conclusion ? :)

for $client in doc ("../Donnees/customers.xml") //customer

return
    if (exists
    (
        doc ("../Donnees/orders.xml")
        //order [book]
        /customer [@id = $client /@id]
    ))
    
    then
    (
        $client
        /name
        /text ()
    )

(: Conclusion - cet algorithme est de complexité quadratique, mais remplit une fonction de complexité linéaire, ce qui pourrait être réalisé avec un langage de programmation digne de ce nom. :)
