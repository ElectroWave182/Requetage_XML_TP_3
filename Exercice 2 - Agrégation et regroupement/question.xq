(: Quantité totale commandée par genre. :)

let $livres :=
    doc ("../Donnees/books.xml")
    //book

for $genre in
    distinct-values
    (
        $livres
        /genre
    )

order by $genre

return
    <genre>
        <nom>
            {$genre}
        </nom>
        <commandes>
            {
                sum
                (
                    doc ("../Donnees/orders.xml")
                    //book [@id = $livres [genre = $genre] /@id]
                    /qty
                )
            }
        </commandes>
    </genre>
