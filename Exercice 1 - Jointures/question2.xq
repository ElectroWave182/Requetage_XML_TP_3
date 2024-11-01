(: Noms des clients qui ont commandé un ou plusieurs livres (formuler la condition de jointure à l’aide d’une clause where). :)

for $client in doc ("../Donnees/customers.xml") //customer
where $client /@id = doc ("../Donnees/orders.xml") //customer /@id
return $client /name /text ()

(: Note - toute clause "where" peut être traduite en instruction "if (...) then (...)" :)
