(: Longueur moyenne des descriptions par genre. :)

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
        <longueurMoyenneDescription>
            {
                avg
                (
                    $livres [genre = $genre]
                    /string-length (description)
                )
            }
        </longueurMoyenneDescription>
    </genre>
