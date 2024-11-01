(: Noms des clients qui n’ont commandé aucun livre. :)

for $client in doc ("../Donnees/customers.xml") //customer

return
    if (not (exists
    (
        doc ("../Donnees/orders.xml")
        //order [book]
        /customer [@id = $client /@id]
    )))
    
    then
    (
        $client
        /name
        /text ()
    )
