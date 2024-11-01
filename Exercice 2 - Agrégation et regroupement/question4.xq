(: Nombre de livres par auteur. :)

let $livres :=
    doc ("../Donnees/books.xml")
    //book

for $auteur in
    distinct-values
    (
        $livres
        /author
    )

return
    <auteur>
        <nom>
            {$auteur}
        </nom>
        <nombreLivres>
            {count ($livres [author = $auteur])}
        </nombreLivres>
    </auteur>
