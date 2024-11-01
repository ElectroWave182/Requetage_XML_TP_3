(: Quantité totale commandée par livre (indiquer les titres des livres). :)

let $livres := doc ("../Donnees/books.xml") //book
for $livre in $livres

let $titre :=
    $livre
    /title
    /text ()

order by $titre

return
    <livre>
        <titre>
            {$titre}
        </titre>
        <commandes>
            {
                sum
                (
                    doc ("../Donnees/orders.xml")
                    //book [@id = $livre /@id]
                    /qty
                )
            }
        </commandes>
    </livre>