(: Nombre de livres par auteur et par genre. :)

let $livres :=
    doc ("../Donnees/books.xml")
    //book

for
    $auteur in distinct-values
        (
            $livres
            /author
        ),
    
    $genre in distinct-values
        (
            $livres
            /genre
        )

order by $auteur, $genre

return
    <style>
        <auteur>
            {$auteur}
        </auteur>
        <genre>
            {$genre}
        </genre>
        <nombreLivres>
            {count ($livres [author = $auteur] [genre = $genre])}
        </nombreLivres>
    </style>
