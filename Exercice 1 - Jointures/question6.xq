(: Noms des clients qui n’ont commandé aucun livre. :)

for $client in doc ("../Donnees/customers.xml") //customer

return
    if (2 <= sum
    (
        doc ("../Donnees/orders.xml")
        //order [customer /@id = $client /@id]
        /book
        /qty
    ))
    
    then
    (
        $client
        /name
        /text ()
    )
