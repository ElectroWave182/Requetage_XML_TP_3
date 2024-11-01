(: Nombre et prix moyens des livres par genre, triés par genre. À partir de cette question, toujours trier le résultat en fonction du ou des éléments de regroupement. :)

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
        <nombreLivres>
            {count ($livres [genre = $genre])}
        </nombreLivres>
        <prixMoyen>
            {
                avg
                (
                    $livres [genre = $genre]
                    /price
                )
            }
        </prixMoyen>
    </genre>
